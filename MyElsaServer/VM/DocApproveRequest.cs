namespace MyElsaServer.VM
{
    public class DocApproveRequest
    {  /// <summary>
       /// 
       /// </summary>
        public string Id { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public Author Author { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public string Body { get; set; }
    }

    public class Author
    {
        /// <summary>
        /// 
        /// </summary>
        public string Name { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public string Email { get; set; }
    }
}
