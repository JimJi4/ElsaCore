using System.Net;
using System.Net.Http;
using Elsa.Activities.ControlFlow;
using Elsa.Activities.Email;
using Elsa.Activities.Http;
using Elsa.Activities.Http.Extensions;
using Elsa.Activities.Http.Models;
using Elsa.Activities.Primitives;
using Elsa.Activities.Temporal;
using Elsa.Builders;
using MyElsaServer.VM;
using Newtonsoft.Json;
using NodaTime;
namespace MyElsaServer.WF
{
    public class DocumentApprovalWorkflow : IWorkflow
    {
        public void Build(IWorkflowBuilder builder)
        {
            builder
                .WithDisplayName("Document Approval Workflow")
                .HttpEndpoint(activity => activity
                    .WithPath("/v1/documents")
                    .WithMethod(HttpMethod.Post.Method)
                    .WithReadContent())
                .SetVariable("Document", context =>context.GetInput<HttpRequestModel>()!.Body)
                .SendEmail(activity => activity
                    .WithSender("workflow@acme.com")
                    .WithRecipient("josh@acme.com")
                    .WithSubject(context => $"Document received from {JsonConvert.DeserializeObject<DocApproveRequest>(context.GetVariable<dynamic>("Document"))!.Author.Name}")
                    .WithBody(context =>
                    {
                        var document = JsonConvert.DeserializeObject<DocApproveRequest>(context.GetVariable<dynamic>("Document"));
                        var author = document?.Author;
                        return $"Document from {author?.Name} received for review.<br><a href=\"{context.GenerateSignalUrl("Approve")}\">Approve</a> or <a href=\"{context.GenerateSignalUrl("Reject")}\">Reject</a>";
                    })) 
                /*.WriteHttpResponse(
                                   content => {
                                       var temp  = content.Outcomes.Append("out3");
                                      // content.Outcomes = (IReadOnlyCollection<string>)temp;
                                       var outcomes = content.Outcomes;
                                       content.Output = JsonConvert.DeserializeObject(@"{op1:""op1"",op2:""op2""}");
                                       var @var = content.Output; 
                                       content.SetVariable("afterEmail_outcomes",JsonConvert.SerializeObject( outcomes)); content.SetVariable("afterEmail_Output", @var);
                                       return HttpStatusCode.OK;},
                                   activity => { var input = activity.Input; return "afterEmail_input:" + JsonConvert.SerializeObject(input) + JsonConvert.SerializeObject(activity.Output) + JsonConvert.SerializeObject(activity.Outcomes);  },
                                   context => { return "text/html"; },0) */
                .WriteHttpResponse(
                    HttpStatusCode.OK,
                    "<h1>Request for Approval Sent</h1><p>Your document has been received and will be reviewed shortly.</p>",
                    "text/html")
                .Then<Fork>(activity => activity.WithBranches("Approve", "Reject", "Remind"), fork =>
                {
                    fork
                        .When("Approve")
                        .SignalReceived("Approve")
                        .SendEmail(activity => activity
                            .WithSender("workflow@acme.com")
                           /* .WithRecipient(context => context.GetVariable<DocApproveRequest>("Document")!.Author.Email)
                            .WithSubject(context => $"Document {context.GetVariable<DocApproveRequest>("Document")!.Id} Approved!")
                            .WithBody(context => $"Great job {context.GetVariable<DocApproveRequest>("Document")!.Author.Name}, that document is perfect."))*/
                        .WithRecipient(context => JsonConvert.DeserializeObject<DocApproveRequest>(context.GetVariable<dynamic>("Document"))!.Author.Email)
                            .WithSubject(context => $"Document {JsonConvert.DeserializeObject<DocApproveRequest>(context.GetVariable<dynamic>("Document"))!.Id} Approved!")
                            .WithBody(context => $"Great job {JsonConvert.DeserializeObject<DocApproveRequest>(context.GetVariable<dynamic>("Document"))!.Author.Name}, that document is perfect."))
                        .ThenNamed("Join");

                    fork
                        .When("Reject")
                        .SignalReceived("Reject")
                        .SendEmail(activity => activity
                            .WithSender("workflow@acme.com")
                            /*.WithRecipient(context => context.GetVariable<DocApproveRequest>("Document")!.Author.Email)
                            .WithSubject(context => $"Document {context.GetVariable<DocApproveRequest>("Document")!.Id} Rejected")
                            .WithBody(context => $"Nice try {context.GetVariable<DocApproveRequest>("Document")!.Author.Name}, but that document needs work.")) */
                        .WithRecipient(context => JsonConvert.DeserializeObject<DocApproveRequest>(context.GetVariable<dynamic>("Document"))!.Author.Email)
                            .WithSubject(context => $"Document {JsonConvert.DeserializeObject<DocApproveRequest>(context.GetVariable<dynamic>("Document"))!.Id} Rejected")
                            .WithBody(context => $"Nice try {JsonConvert.DeserializeObject<DocApproveRequest>(context.GetVariable<dynamic>("Document"))!.Author.Name}, but that document needs work."))
                        .ThenNamed("Join");

                    fork
                        .When("Remind")
                        .Timer(Duration.FromSeconds(10)).WithName("Reminder")
                        .SendEmail(activity => activity
                                .WithSender("workflow@acme.com")
                                .WithRecipient("josh@acme.com")
                               /* .WithSubject(context => $"{context.GetVariable<DocApproveRequest>("Document")!.Author.Name} is waiting for your review!")
                                .WithBody(context =>
                                    $"Don't forget to review document {context.GetVariable<DocApproveRequest>("Document")!.Id}.<br><a href=\"{context.GenerateSignalUrl("Approve")}\">Approve</a> or <a href=\"{context.GenerateSignalUrl("Reject")}\">Reject</a>"))*/
                        .WithSubject(context => $"{JsonConvert.DeserializeObject<DocApproveRequest>(context.GetVariable<dynamic>("Document"))!.Author.Name} is waiting for your review!")
                                .WithBody(context =>
                                    $"Don't forget to review document {JsonConvert.DeserializeObject<DocApproveRequest>(context.GetVariable<dynamic>("Document"))!.Id}.<br><a href=\"{context.GenerateSignalUrl("Approve")}\">Approve</a> or <a href=\"{context.GenerateSignalUrl("Reject")}\">Reject</a>"))
                            .ThenNamed("Reminder");
                })
                .Add<Join>(join => join.WithMode(Join.JoinMode.WaitAny)).WithName("Join")
                .WriteHttpResponse(HttpStatusCode.OK, "Thanks for the hard work!", "text/html");
        }
    }
}