--
-- SQLiteStudio v3.4.3 生成的文件，周四 3月 16 09:25:50 2023
--
-- 所用的文本编码：UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- 表：__EFMigrationsHistory
CREATE TABLE IF NOT EXISTS __EFMigrationsHistory (
    MigrationId    TEXT NOT NULL
                        CONSTRAINT PK___EFMigrationsHistory PRIMARY KEY,
    ProductVersion TEXT NOT NULL
);

INSERT INTO __EFMigrationsHistory (
                                      MigrationId,
                                      ProductVersion
                                  )
                                  VALUES (
                                      '20210523093453_Initial',
                                      '6.0.1'
                                  );

INSERT INTO __EFMigrationsHistory (
                                      MigrationId,
                                      ProductVersion
                                  )
                                  VALUES (
                                      '20210611200042_Update21',
                                      '6.0.1'
                                  );

INSERT INTO __EFMigrationsHistory (
                                      MigrationId,
                                      ProductVersion
                                  )
                                  VALUES (
                                      '20210923112220_Update23',
                                      '6.0.1'
                                  );

INSERT INTO __EFMigrationsHistory (
                                      MigrationId,
                                      ProductVersion
                                  )
                                  VALUES (
                                      '20211215100212_Update24',
                                      '6.0.1'
                                  );

INSERT INTO __EFMigrationsHistory (
                                      MigrationId,
                                      ProductVersion
                                  )
                                  VALUES (
                                      '20220120170236_Update241',
                                      '6.0.1'
                                  );

INSERT INTO __EFMigrationsHistory (
                                      MigrationId,
                                      ProductVersion
                                  )
                                  VALUES (
                                      '20220120204200_Update25',
                                      '6.0.1'
                                  );

INSERT INTO __EFMigrationsHistory (
                                      MigrationId,
                                      ProductVersion
                                  )
                                  VALUES (
                                      '20220512203656_Update28',
                                      '6.0.1'
                                  );


-- 表：Bookmarks
CREATE TABLE IF NOT EXISTS Bookmarks (
    Id                 TEXT NOT NULL
                            CONSTRAINT PK_Bookmarks PRIMARY KEY,
    ActivityId         TEXT NOT NULL,
    ActivityType       TEXT NOT NULL,
    CorrelationId      TEXT NOT NULL,
    Hash               TEXT NOT NULL,
    Model              TEXT NOT NULL,
    ModelType          TEXT NOT NULL,
    TenantId           TEXT,
    WorkflowInstanceId TEXT NOT NULL
);

INSERT INTO Bookmarks (
                          Id,
                          ActivityId,
                          ActivityType,
                          CorrelationId,
                          Hash,
                          Model,
                          ModelType,
                          TenantId,
                          WorkflowInstanceId
                      )
                      VALUES (
                          '25dfd613cd0647d29cdacb847ba28a40',
                          '10dee174-36ce-45b5-a99b-2112c160cc8c',
                          'SignalReceived',
                          '0b2eb542c7a44ddd87e97686c2daff2e',
                          '9433ab6c8fe8bb7ef36083448ca3b99ff602da891eeaab360626ae6307699b74',
                          '{
  "$id": "1",
  "signal": "reject"
}',
                          'Elsa.Activities.Signaling.SignalReceivedBookmark, Elsa.Core',
                          NULL,
                          '33046df735b2447da983e6f19a5117ae'
                      );

INSERT INTO Bookmarks (
                          Id,
                          ActivityId,
                          ActivityType,
                          CorrelationId,
                          Hash,
                          Model,
                          ModelType,
                          TenantId,
                          WorkflowInstanceId
                      )
                      VALUES (
                          '4abc038e97e648f4b86a311b76ef397f',
                          '32d7eef9-1b28-4881-a3aa-923106f91291',
                          'SignalReceived',
                          '0b2eb542c7a44ddd87e97686c2daff2e',
                          'cb14310c0baf01a8a35e8b899b4d90e669c516fec787e2557d620b49a29d4781',
                          '{
  "$id": "1",
  "signal": "approve"
}',
                          'Elsa.Activities.Signaling.SignalReceivedBookmark, Elsa.Core',
                          NULL,
                          '33046df735b2447da983e6f19a5117ae'
                      );


-- 表：Triggers
CREATE TABLE IF NOT EXISTS Triggers (
    Id                   TEXT NOT NULL
                              CONSTRAINT PK_Triggers PRIMARY KEY,
    TenantId             TEXT,
    Hash                 TEXT NOT NULL,
    Model                TEXT NOT NULL,
    ModelType            TEXT NOT NULL,
    ActivityType         TEXT NOT NULL,
    ActivityId           TEXT NOT NULL,
    WorkflowDefinitionId TEXT NOT NULL
);

INSERT INTO Triggers (
                         Id,
                         TenantId,
                         Hash,
                         Model,
                         ModelType,
                         ActivityType,
                         ActivityId,
                         WorkflowDefinitionId
                     )
                     VALUES (
                         '9c948553a3fa459a85d5d6ac28b285ea',
                         NULL,
                         '0bbecefa6f345863a60cf9f14aeae96b6083a89d340e9d1e7e5e607d13788cc8',
                         '{"Path":"/hello-world","Method":"get"}',
                         'Elsa.Activities.Http.Bookmarks.HttpEndpointBookmark, Elsa.Activities.Http',
                         'HttpEndpoint',
                         '479d5e06-798c-4e7c-9840-369abe48aa6a',
                         'd7a8f96fa2fd420682483b50ea3813a4'
                     );

INSERT INTO Triggers (
                         Id,
                         TenantId,
                         Hash,
                         Model,
                         ModelType,
                         ActivityType,
                         ActivityId,
                         WorkflowDefinitionId
                     )
                     VALUES (
                         'e196d122008d454c8d63e5ec1d85d3d8',
                         NULL,
                         '6c493cd5d04f907ab4ca34c8addac0077de298e0c38512632a2a58b378e82806',
                         '{"Path":"/leaveapprove","Method":"post"}',
                         'Elsa.Activities.Http.Bookmarks.HttpEndpointBookmark, Elsa.Activities.Http',
                         'HttpEndpoint',
                         '55da7374-13ea-49e2-8099-9e7e2513e8a2',
                         '539d52828fdf4cf290920ea4313dacb7'
                     );

INSERT INTO Triggers (
                         Id,
                         TenantId,
                         Hash,
                         Model,
                         ModelType,
                         ActivityType,
                         ActivityId,
                         WorkflowDefinitionId
                     )
                     VALUES (
                         '7532861c5cf5489aaaf3f6b333efb842',
                         NULL,
                         'a6e924e096183c16aa45bec23c33c1b8df0785bf5f9e5cb103fb0247d5497477',
                         '{"Path":"/bmi","Method":"post"}',
                         'Elsa.Activities.Http.Bookmarks.HttpEndpointBookmark, Elsa.Activities.Http',
                         'HttpEndpoint',
                         '68d13fe1-40cf-4737-8803-f5400478509a',
                         'd2c6193b3473441e83203f9f5639b39b'
                     );


-- 表：WorkflowDefinitions
CREATE TABLE IF NOT EXISTS WorkflowDefinitions (
    Id                       TEXT    NOT NULL
                                     CONSTRAINT PK_WorkflowDefinitions PRIMARY KEY,
    Data                     TEXT,
    DefinitionId             TEXT    NOT NULL,
    DeleteCompletedInstances INTEGER NOT NULL,
    Description              TEXT,
    DisplayName              TEXT,
    IsLatest                 INTEGER NOT NULL,
    IsPublished              INTEGER NOT NULL,
    IsSingleton              INTEGER NOT NULL,
    Name                     TEXT,
    PersistenceBehavior      INTEGER NOT NULL,
    Tag                      TEXT,
    TenantId                 TEXT,
    Version                  INTEGER NOT NULL,
    CreatedAt                TEXT    NOT NULL
                                     DEFAULT '0001-01-01 00:00:00'
);

INSERT INTO WorkflowDefinitions (
                                    Id,
                                    Data,
                                    DefinitionId,
                                    DeleteCompletedInstances,
                                    Description,
                                    DisplayName,
                                    IsLatest,
                                    IsPublished,
                                    IsSingleton,
                                    Name,
                                    PersistenceBehavior,
                                    Tag,
                                    TenantId,
                                    Version,
                                    CreatedAt
                                )
                                VALUES (
                                    'c390d8927f29499b81b55bdc5172ca17',
                                    '{
  "$id": "1",
  "activities": [
    {
      "$id": "2",
      "activityId": "479d5e06-798c-4e7c-9840-369abe48aa6a",
      "type": "HttpEndpoint",
      "displayName": "HTTP Endpoint",
      "persistWorkflow": false,
      "loadWorkflowContext": false,
      "saveWorkflowContext": false,
      "properties": [
        {
          "$id": "3",
          "name": "Path",
          "expressions": {
            "$id": "4",
            "Literal": "/hello-world"
          }
        },
        {
          "$id": "5",
          "name": "Methods",
          "expressions": {
            "$id": "6",
            "Json": "[\"GET\"]"
          }
        },
        {
          "$id": "7",
          "name": "ReadContent",
          "expressions": {
            "$id": "8"
          }
        },
        {
          "$id": "9",
          "name": "TargetType",
          "expressions": {
            "$id": "10"
          }
        },
        {
          "$id": "11",
          "name": "Schema",
          "syntax": "Literal",
          "expressions": {
            "$id": "12",
            "Literal": ""
          }
        },
        {
          "$id": "13",
          "name": "Authorize",
          "expressions": {
            "$id": "14"
          }
        },
        {
          "$id": "15",
          "name": "Policy",
          "expressions": {
            "$id": "16"
          }
        }
      ],
      "propertyStorageProviders": {}
    },
    {
      "$id": "17",
      "activityId": "6e851021-1127-4c07-a1db-15e1659c6da8",
      "type": "WriteHttpResponse",
      "displayName": "HTTP Response",
      "persistWorkflow": false,
      "loadWorkflowContext": false,
      "saveWorkflowContext": false,
      "properties": [
        {
          "$id": "18",
          "name": "Content",
          "expressions": {
            "$id": "19",
            "Literal": "<h1>你好</h1>"
          }
        },
        {
          "$id": "20",
          "name": "ContentType",
          "expressions": {
            "$id": "21",
            "Literal": "text/html"
          }
        },
        {
          "$id": "22",
          "name": "StatusCode",
          "expressions": {
            "$id": "23",
            "Literal": "OK"
          }
        },
        {
          "$id": "24",
          "name": "CharSet",
          "expressions": {
            "$id": "25"
          }
        },
        {
          "$id": "26",
          "name": "ResponseHeaders",
          "expressions": {
            "$id": "27"
          }
        }
      ],
      "propertyStorageProviders": {}
    }
  ],
  "connections": [
    {
      "$id": "28",
      "sourceActivityId": "479d5e06-798c-4e7c-9840-369abe48aa6a",
      "targetActivityId": "6e851021-1127-4c07-a1db-15e1659c6da8",
      "outcome": "Done"
    }
  ],
  "variables": {
    "$id": "29",
    "data": {}
  },
  "customAttributes": {
    "$id": "30",
    "data": {}
  }
}',
                                    'd7a8f96fa2fd420682483b50ea3813a4',
                                    0,
                                    NULL,
                                    NULL,
                                    1,
                                    1,
                                    0,
                                    NULL,
                                    1,
                                    NULL,
                                    NULL,
                                    1,
                                    '2022-06-04 02:09:28.439076'
                                );

INSERT INTO WorkflowDefinitions (
                                    Id,
                                    Data,
                                    DefinitionId,
                                    DeleteCompletedInstances,
                                    Description,
                                    DisplayName,
                                    IsLatest,
                                    IsPublished,
                                    IsSingleton,
                                    Name,
                                    PersistenceBehavior,
                                    Tag,
                                    TenantId,
                                    Version,
                                    CreatedAt
                                )
                                VALUES (
                                    '72b57fef02444d3eafec0ebf05df348e',
                                    '{
  "$id": "1",
  "activities": [
    {
      "$id": "2",
      "activityId": "68d13fe1-40cf-4737-8803-f5400478509a",
      "type": "HttpEndpoint",
      "displayName": "HTTP Endpoint",
      "persistWorkflow": false,
      "loadWorkflowContext": false,
      "saveWorkflowContext": false,
      "properties": [
        {
          "$id": "3",
          "name": "Path",
          "expressions": {
            "$id": "4",
            "Literal": "/bmi"
          }
        },
        {
          "$id": "5",
          "name": "Methods",
          "expressions": {
            "$id": "6",
            "Json": "[\"POST\"]"
          }
        },
        {
          "$id": "7",
          "name": "ReadContent",
          "expressions": {
            "$id": "8",
            "Literal": "true"
          }
        },
        {
          "$id": "9",
          "name": "TargetType",
          "expressions": {
            "$id": "10"
          }
        },
        {
          "$id": "11",
          "name": "Schema",
          "syntax": "Literal",
          "expressions": {
            "$id": "12",
            "Literal": ""
          }
        },
        {
          "$id": "13",
          "name": "Authorize",
          "expressions": {
            "$id": "14"
          }
        },
        {
          "$id": "15",
          "name": "Policy",
          "expressions": {
            "$id": "16"
          }
        }
      ],
      "propertyStorageProviders": {}
    },
    {
      "$id": "17",
      "activityId": "08ace775-b5e5-48ab-b937-da2caa026448",
      "type": "SetVariable",
      "displayName": "Set Variable",
      "persistWorkflow": false,
      "loadWorkflowContext": false,
      "saveWorkflowContext": false,
      "properties": [
        {
          "$id": "18",
          "name": "VariableName",
          "expressions": {
            "$id": "19",
            "Literal": "mydata"
          }
        },
        {
          "$id": "20",
          "name": "Value",
          "syntax": "JavaScript",
          "expressions": {
            "$id": "21",
            "JavaScript": "input.Body"
          }
        }
      ],
      "propertyStorageProviders": {}
    },
    {
      "$id": "22",
      "activityId": "cf812a65-140d-47a1-8c08-3bf8706106b0",
      "type": "WriteHttpResponse",
      "displayName": "HTTP Response",
      "persistWorkflow": false,
      "loadWorkflowContext": false,
      "saveWorkflowContext": false,
      "properties": [
        {
          "$id": "23",
          "name": "Content",
          "syntax": "Liquid",
          "expressions": {
            "$id": "24",
            "Liquid": "Data Received {myData.name} {myData.Height} {myData.Weight}"
          }
        },
        {
          "$id": "25",
          "name": "ContentType",
          "expressions": {
            "$id": "26",
            "Literal": "text/plain"
          }
        },
        {
          "$id": "27",
          "name": "StatusCode",
          "expressions": {
            "$id": "28",
            "Literal": "OK"
          }
        },
        {
          "$id": "29",
          "name": "CharSet",
          "expressions": {
            "$id": "30"
          }
        },
        {
          "$id": "31",
          "name": "ResponseHeaders",
          "expressions": {
            "$id": "32"
          }
        }
      ],
      "propertyStorageProviders": {}
    }
  ],
  "connections": [
    {
      "$id": "33",
      "sourceActivityId": "68d13fe1-40cf-4737-8803-f5400478509a",
      "targetActivityId": "08ace775-b5e5-48ab-b937-da2caa026448",
      "outcome": "Done"
    },
    {
      "$id": "34",
      "sourceActivityId": "08ace775-b5e5-48ab-b937-da2caa026448",
      "targetActivityId": "cf812a65-140d-47a1-8c08-3bf8706106b0",
      "outcome": "Done"
    }
  ],
  "variables": {
    "$id": "35",
    "data": {}
  },
  "customAttributes": {
    "$id": "36",
    "data": {}
  }
}',
                                    'd2c6193b3473441e83203f9f5639b39b',
                                    0,
                                    NULL,
                                    NULL,
                                    0,
                                    0,
                                    0,
                                    NULL,
                                    1,
                                    NULL,
                                    NULL,
                                    1,
                                    '2022-06-07 00:40:25.5412026'
                                );

INSERT INTO WorkflowDefinitions (
                                    Id,
                                    Data,
                                    DefinitionId,
                                    DeleteCompletedInstances,
                                    Description,
                                    DisplayName,
                                    IsLatest,
                                    IsPublished,
                                    IsSingleton,
                                    Name,
                                    PersistenceBehavior,
                                    Tag,
                                    TenantId,
                                    Version,
                                    CreatedAt
                                )
                                VALUES (
                                    'e9734c33468f48f7a7ab6d901c76b1a0',
                                    '{
  "$id": "1",
  "activities": [
    {
      "$id": "2",
      "activityId": "68d13fe1-40cf-4737-8803-f5400478509a",
      "type": "HttpEndpoint",
      "displayName": "HTTP Endpoint",
      "persistWorkflow": false,
      "loadWorkflowContext": false,
      "saveWorkflowContext": false,
      "properties": [
        {
          "$id": "3",
          "name": "Path",
          "expressions": {
            "$id": "4",
            "Literal": "/bmi"
          }
        },
        {
          "$id": "5",
          "name": "Methods",
          "expressions": {
            "$id": "6",
            "Json": "[\"POST\"]"
          }
        },
        {
          "$id": "7",
          "name": "ReadContent",
          "expressions": {
            "$id": "8",
            "Literal": "true"
          }
        },
        {
          "$id": "9",
          "name": "TargetType",
          "expressions": {
            "$id": "10"
          }
        },
        {
          "$id": "11",
          "name": "Schema",
          "syntax": "Literal",
          "expressions": {
            "$id": "12",
            "Literal": ""
          }
        },
        {
          "$id": "13",
          "name": "Authorize",
          "expressions": {
            "$id": "14"
          }
        },
        {
          "$id": "15",
          "name": "Policy",
          "expressions": {
            "$id": "16"
          }
        }
      ],
      "propertyStorageProviders": {}
    },
    {
      "$id": "17",
      "activityId": "08ace775-b5e5-48ab-b937-da2caa026448",
      "type": "SetVariable",
      "displayName": "Set Variable",
      "persistWorkflow": false,
      "loadWorkflowContext": false,
      "saveWorkflowContext": false,
      "properties": [
        {
          "$id": "18",
          "name": "VariableName",
          "expressions": {
            "$id": "19",
            "Literal": "mydata"
          }
        },
        {
          "$id": "20",
          "name": "Value",
          "syntax": "JavaScript",
          "expressions": {
            "$id": "21",
            "JavaScript": "input.Body"
          }
        }
      ],
      "propertyStorageProviders": {}
    },
    {
      "$id": "22",
      "activityId": "cf812a65-140d-47a1-8c08-3bf8706106b0",
      "type": "WriteHttpResponse",
      "displayName": "HTTP Response",
      "persistWorkflow": false,
      "loadWorkflowContext": false,
      "saveWorkflowContext": false,
      "properties": [
        {
          "$id": "23",
          "name": "Content",
          "syntax": "Liquid",
          "expressions": {
            "$id": "24",
            "Liquid": "Data Received {{ Variables.mydata.Name }} {{ Variables.mydata.Height }} {{ Variables.mydata.Weight }}"
          }
        },
        {
          "$id": "25",
          "name": "ContentType",
          "expressions": {
            "$id": "26",
            "Literal": "text/plain"
          }
        },
        {
          "$id": "27",
          "name": "StatusCode",
          "expressions": {
            "$id": "28",
            "Literal": "OK"
          }
        },
        {
          "$id": "29",
          "name": "CharSet",
          "expressions": {
            "$id": "30"
          }
        },
        {
          "$id": "31",
          "name": "ResponseHeaders",
          "expressions": {
            "$id": "32"
          }
        }
      ],
      "propertyStorageProviders": {}
    }
  ],
  "connections": [
    {
      "$id": "33",
      "sourceActivityId": "68d13fe1-40cf-4737-8803-f5400478509a",
      "targetActivityId": "08ace775-b5e5-48ab-b937-da2caa026448",
      "outcome": "Done"
    },
    {
      "$id": "34",
      "sourceActivityId": "08ace775-b5e5-48ab-b937-da2caa026448",
      "targetActivityId": "cf812a65-140d-47a1-8c08-3bf8706106b0",
      "outcome": "Done"
    }
  ],
  "variables": {
    "$id": "35",
    "data": {}
  },
  "customAttributes": {
    "$id": "36",
    "data": {}
  }
}',
                                    'd2c6193b3473441e83203f9f5639b39b',
                                    0,
                                    NULL,
                                    NULL,
                                    0,
                                    0,
                                    0,
                                    'setvariale',
                                    1,
                                    NULL,
                                    NULL,
                                    2,
                                    '2022-06-07 00:47:18.1873739'
                                );

INSERT INTO WorkflowDefinitions (
                                    Id,
                                    Data,
                                    DefinitionId,
                                    DeleteCompletedInstances,
                                    Description,
                                    DisplayName,
                                    IsLatest,
                                    IsPublished,
                                    IsSingleton,
                                    Name,
                                    PersistenceBehavior,
                                    Tag,
                                    TenantId,
                                    Version,
                                    CreatedAt
                                )
                                VALUES (
                                    '38560ca9806f4ccf9daa70137da3b716',
                                    '{
  "$id": "1",
  "activities": [
    {
      "$id": "2",
      "activityId": "68d13fe1-40cf-4737-8803-f5400478509a",
      "type": "HttpEndpoint",
      "displayName": "HTTP Endpoint",
      "persistWorkflow": false,
      "loadWorkflowContext": false,
      "saveWorkflowContext": false,
      "properties": [
        {
          "$id": "3",
          "name": "Path",
          "expressions": {
            "$id": "4",
            "Literal": "/bmi"
          }
        },
        {
          "$id": "5",
          "name": "Methods",
          "expressions": {
            "$id": "6",
            "Json": "[\"POST\"]"
          }
        },
        {
          "$id": "7",
          "name": "ReadContent",
          "expressions": {
            "$id": "8",
            "Literal": "true"
          }
        },
        {
          "$id": "9",
          "name": "TargetType",
          "expressions": {
            "$id": "10"
          }
        },
        {
          "$id": "11",
          "name": "Schema",
          "syntax": "Literal",
          "expressions": {
            "$id": "12",
            "Literal": ""
          }
        },
        {
          "$id": "13",
          "name": "Authorize",
          "expressions": {
            "$id": "14"
          }
        },
        {
          "$id": "15",
          "name": "Policy",
          "expressions": {
            "$id": "16"
          }
        }
      ],
      "propertyStorageProviders": {}
    },
    {
      "$id": "17",
      "activityId": "08ace775-b5e5-48ab-b937-da2caa026448",
      "type": "SetVariable",
      "displayName": "Set Variable",
      "persistWorkflow": false,
      "loadWorkflowContext": false,
      "saveWorkflowContext": false,
      "properties": [
        {
          "$id": "18",
          "name": "VariableName",
          "expressions": {
            "$id": "19",
            "Literal": "mydata"
          }
        },
        {
          "$id": "20",
          "name": "Value",
          "syntax": "JavaScript",
          "expressions": {
            "$id": "21",
            "JavaScript": "input.Body"
          }
        }
      ],
      "propertyStorageProviders": {}
    },
    {
      "$id": "22",
      "activityId": "cf812a65-140d-47a1-8c08-3bf8706106b0",
      "type": "WriteHttpResponse",
      "displayName": "HTTP Response",
      "persistWorkflow": false,
      "loadWorkflowContext": false,
      "saveWorkflowContext": false,
      "properties": [
        {
          "$id": "23",
          "name": "Content",
          "syntax": "Liquid",
          "expressions": {
            "$id": "24",
            "Liquid": "Data Received {{ Variables.mydata.Name }} {{ Variables.mydata.Height }} {{ Variables.mydata.Weight }}"
          }
        },
        {
          "$id": "25",
          "name": "ContentType",
          "expressions": {
            "$id": "26",
            "Literal": "text/html"
          }
        },
        {
          "$id": "27",
          "name": "StatusCode",
          "expressions": {
            "$id": "28",
            "Literal": "OK"
          }
        },
        {
          "$id": "29",
          "name": "CharSet",
          "expressions": {
            "$id": "30"
          }
        },
        {
          "$id": "31",
          "name": "ResponseHeaders",
          "expressions": {
            "$id": "32"
          }
        }
      ],
      "propertyStorageProviders": {}
    }
  ],
  "connections": [
    {
      "$id": "33",
      "sourceActivityId": "68d13fe1-40cf-4737-8803-f5400478509a",
      "targetActivityId": "08ace775-b5e5-48ab-b937-da2caa026448",
      "outcome": "Done"
    },
    {
      "$id": "34",
      "sourceActivityId": "08ace775-b5e5-48ab-b937-da2caa026448",
      "targetActivityId": "cf812a65-140d-47a1-8c08-3bf8706106b0",
      "outcome": "Done"
    }
  ],
  "variables": {
    "$id": "35",
    "data": {}
  },
  "customAttributes": {
    "$id": "36",
    "data": {}
  }
}',
                                    'd2c6193b3473441e83203f9f5639b39b',
                                    0,
                                    NULL,
                                    NULL,
                                    0,
                                    0,
                                    0,
                                    'setvariale',
                                    1,
                                    NULL,
                                    NULL,
                                    3,
                                    '2022-06-07 00:50:20.7043402'
                                );

INSERT INTO WorkflowDefinitions (
                                    Id,
                                    Data,
                                    DefinitionId,
                                    DeleteCompletedInstances,
                                    Description,
                                    DisplayName,
                                    IsLatest,
                                    IsPublished,
                                    IsSingleton,
                                    Name,
                                    PersistenceBehavior,
                                    Tag,
                                    TenantId,
                                    Version,
                                    CreatedAt
                                )
                                VALUES (
                                    '56dc0162a6d9439c8d045732b562ac69',
                                    '{
  "$id": "1",
  "activities": [
    {
      "$id": "2",
      "activityId": "68d13fe1-40cf-4737-8803-f5400478509a",
      "type": "HttpEndpoint",
      "displayName": "HTTP Endpoint",
      "persistWorkflow": false,
      "loadWorkflowContext": false,
      "saveWorkflowContext": false,
      "properties": [
        {
          "$id": "3",
          "name": "Path",
          "expressions": {
            "$id": "4",
            "Literal": "/bmi"
          }
        },
        {
          "$id": "5",
          "name": "Methods",
          "expressions": {
            "$id": "6",
            "Json": "[\"POST\"]"
          }
        },
        {
          "$id": "7",
          "name": "ReadContent",
          "expressions": {
            "$id": "8",
            "Literal": "true"
          }
        },
        {
          "$id": "9",
          "name": "TargetType",
          "expressions": {
            "$id": "10"
          }
        },
        {
          "$id": "11",
          "name": "Schema",
          "syntax": "Literal",
          "expressions": {
            "$id": "12",
            "Literal": ""
          }
        },
        {
          "$id": "13",
          "name": "Authorize",
          "expressions": {
            "$id": "14"
          }
        },
        {
          "$id": "15",
          "name": "Policy",
          "expressions": {
            "$id": "16"
          }
        }
      ],
      "propertyStorageProviders": {}
    },
    {
      "$id": "17",
      "activityId": "08ace775-b5e5-48ab-b937-da2caa026448",
      "type": "SetVariable",
      "displayName": "Set Variable",
      "persistWorkflow": false,
      "loadWorkflowContext": false,
      "saveWorkflowContext": false,
      "properties": [
        {
          "$id": "18",
          "name": "VariableName",
          "expressions": {
            "$id": "19",
            "Literal": "mydata"
          }
        },
        {
          "$id": "20",
          "name": "Value",
          "syntax": "JavaScript",
          "expressions": {
            "$id": "21",
            "JavaScript": "input.Body"
          }
        }
      ],
      "propertyStorageProviders": {}
    },
    {
      "$id": "22",
      "activityId": "cf812a65-140d-47a1-8c08-3bf8706106b0",
      "type": "WriteHttpResponse",
      "displayName": "HTTP Response",
      "persistWorkflow": false,
      "loadWorkflowContext": false,
      "saveWorkflowContext": false,
      "properties": [
        {
          "$id": "23",
          "name": "Content",
          "syntax": "Liquid",
          "expressions": {
            "$id": "24",
            "Liquid": "Data Received {{ Variables.mydata.Name }} {{ Variables.mydata.Height }} {{ Variables.mydata.Weight }} {{ Variables.mydata.bmi }}"
          }
        },
        {
          "$id": "25",
          "name": "ContentType",
          "expressions": {
            "$id": "26",
            "Literal": "text/html"
          }
        },
        {
          "$id": "27",
          "name": "StatusCode",
          "expressions": {
            "$id": "28",
            "Literal": "OK"
          }
        },
        {
          "$id": "29",
          "name": "CharSet",
          "expressions": {
            "$id": "30"
          }
        },
        {
          "$id": "31",
          "name": "ResponseHeaders",
          "expressions": {
            "$id": "32"
          }
        }
      ],
      "propertyStorageProviders": {}
    },
    {
      "$id": "33",
      "activityId": "80987150-1b9c-4879-8d33-6f16f78332f8",
      "type": "RunJavaScript",
      "displayName": "Run JavaScript",
      "persistWorkflow": false,
      "loadWorkflowContext": false,
      "saveWorkflowContext": false,
      "properties": [
        {
          "$id": "34",
          "name": "Script",
          "syntax": "Literal",
          "expressions": {
            "$id": "35",
            "Literal": "Variables.mydata.bmi=Variables.mydata.Weight/Variables.mydata.Height/Variables.mydata.Height"
          }
        },
        {
          "$id": "36",
          "name": "PossibleOutcomes",
          "expressions": {
            "$id": "37"
          }
        }
      ],
      "propertyStorageProviders": {}
    }
  ],
  "connections": [
    {
      "$id": "38",
      "sourceActivityId": "68d13fe1-40cf-4737-8803-f5400478509a",
      "targetActivityId": "08ace775-b5e5-48ab-b937-da2caa026448",
      "outcome": "Done"
    },
    {
      "$id": "39",
      "sourceActivityId": "08ace775-b5e5-48ab-b937-da2caa026448",
      "targetActivityId": "80987150-1b9c-4879-8d33-6f16f78332f8",
      "outcome": "Done"
    },
    {
      "$id": "40",
      "sourceActivityId": "80987150-1b9c-4879-8d33-6f16f78332f8",
      "targetActivityId": "cf812a65-140d-47a1-8c08-3bf8706106b0",
      "outcome": "Done"
    }
  ],
  "variables": {
    "$id": "41",
    "data": {}
  },
  "customAttributes": {
    "$id": "42",
    "data": {}
  }
}',
                                    'd2c6193b3473441e83203f9f5639b39b',
                                    0,
                                    NULL,
                                    NULL,
                                    0,
                                    0,
                                    0,
                                    'setvariale',
                                    1,
                                    NULL,
                                    NULL,
                                    4,
                                    '2022-06-07 01:04:13.0144142'
                                );

INSERT INTO WorkflowDefinitions (
                                    Id,
                                    Data,
                                    DefinitionId,
                                    DeleteCompletedInstances,
                                    Description,
                                    DisplayName,
                                    IsLatest,
                                    IsPublished,
                                    IsSingleton,
                                    Name,
                                    PersistenceBehavior,
                                    Tag,
                                    TenantId,
                                    Version,
                                    CreatedAt
                                )
                                VALUES (
                                    '7974f69415bb4d62ac04482b3d8d5c73',
                                    '{
  "$id": "1",
  "activities": [
    {
      "$id": "2",
      "activityId": "68d13fe1-40cf-4737-8803-f5400478509a",
      "type": "HttpEndpoint",
      "displayName": "HTTP Endpoint",
      "persistWorkflow": false,
      "loadWorkflowContext": false,
      "saveWorkflowContext": false,
      "properties": [
        {
          "$id": "3",
          "name": "Path",
          "expressions": {
            "$id": "4",
            "Literal": "/bmi"
          }
        },
        {
          "$id": "5",
          "name": "Methods",
          "expressions": {
            "$id": "6",
            "Json": "[\"POST\"]"
          }
        },
        {
          "$id": "7",
          "name": "ReadContent",
          "expressions": {
            "$id": "8",
            "Literal": "true"
          }
        },
        {
          "$id": "9",
          "name": "TargetType",
          "expressions": {
            "$id": "10"
          }
        },
        {
          "$id": "11",
          "name": "Schema",
          "syntax": "Literal",
          "expressions": {
            "$id": "12",
            "Literal": ""
          }
        },
        {
          "$id": "13",
          "name": "Authorize",
          "expressions": {
            "$id": "14"
          }
        },
        {
          "$id": "15",
          "name": "Policy",
          "expressions": {
            "$id": "16"
          }
        }
      ],
      "propertyStorageProviders": {}
    },
    {
      "$id": "17",
      "activityId": "08ace775-b5e5-48ab-b937-da2caa026448",
      "type": "SetVariable",
      "displayName": "Set Variable",
      "persistWorkflow": false,
      "loadWorkflowContext": false,
      "saveWorkflowContext": false,
      "properties": [
        {
          "$id": "18",
          "name": "VariableName",
          "expressions": {
            "$id": "19",
            "Literal": "mydata"
          }
        },
        {
          "$id": "20",
          "name": "Value",
          "syntax": "JavaScript",
          "expressions": {
            "$id": "21",
            "JavaScript": "input.Body"
          }
        }
      ],
      "propertyStorageProviders": {}
    },
    {
      "$id": "22",
      "activityId": "cf812a65-140d-47a1-8c08-3bf8706106b0",
      "type": "WriteHttpResponse",
      "displayName": "HTTP Response",
      "persistWorkflow": false,
      "loadWorkflowContext": false,
      "saveWorkflowContext": false,
      "properties": [
        {
          "$id": "23",
          "name": "Content",
          "syntax": "Liquid",
          "expressions": {
            "$id": "24",
            "Liquid": "Data Received {{ Variables.mydata.Name }} {{ Variables.mydata.Height }} {{ Variables.mydata.Weight }} {{ Variables.mydata.bmi }}"
          }
        },
        {
          "$id": "25",
          "name": "ContentType",
          "expressions": {
            "$id": "26",
            "Literal": "text/html"
          }
        },
        {
          "$id": "27",
          "name": "StatusCode",
          "expressions": {
            "$id": "28",
            "Literal": "OK"
          }
        },
        {
          "$id": "29",
          "name": "CharSet",
          "expressions": {
            "$id": "30"
          }
        },
        {
          "$id": "31",
          "name": "ResponseHeaders",
          "expressions": {
            "$id": "32"
          }
        }
      ],
      "propertyStorageProviders": {}
    },
    {
      "$id": "33",
      "activityId": "80987150-1b9c-4879-8d33-6f16f78332f8",
      "type": "RunJavaScript",
      "displayName": "Run JavaScript",
      "persistWorkflow": false,
      "loadWorkflowContext": false,
      "saveWorkflowContext": false,
      "properties": [
        {
          "$id": "34",
          "name": "Script",
          "syntax": "Literal",
          "expressions": {
            "$id": "35",
            "Literal": "mydata.bmi=mydata.Weight/mydata.Height/mydata.Height"
          }
        },
        {
          "$id": "36",
          "name": "PossibleOutcomes",
          "expressions": {
            "$id": "37"
          }
        }
      ],
      "propertyStorageProviders": {}
    }
  ],
  "connections": [
    {
      "$id": "38",
      "sourceActivityId": "68d13fe1-40cf-4737-8803-f5400478509a",
      "targetActivityId": "08ace775-b5e5-48ab-b937-da2caa026448",
      "outcome": "Done"
    },
    {
      "$id": "39",
      "sourceActivityId": "08ace775-b5e5-48ab-b937-da2caa026448",
      "targetActivityId": "80987150-1b9c-4879-8d33-6f16f78332f8",
      "outcome": "Done"
    },
    {
      "$id": "40",
      "sourceActivityId": "80987150-1b9c-4879-8d33-6f16f78332f8",
      "targetActivityId": "cf812a65-140d-47a1-8c08-3bf8706106b0",
      "outcome": "Done"
    }
  ],
  "variables": {
    "$id": "41",
    "data": {}
  },
  "customAttributes": {
    "$id": "42",
    "data": {}
  }
}',
                                    'd2c6193b3473441e83203f9f5639b39b',
                                    0,
                                    NULL,
                                    NULL,
                                    0,
                                    0,
                                    0,
                                    'setvariale',
                                    1,
                                    NULL,
                                    NULL,
                                    5,
                                    '2022-06-07 01:05:22.6426432'
                                );

INSERT INTO WorkflowDefinitions (
                                    Id,
                                    Data,
                                    DefinitionId,
                                    DeleteCompletedInstances,
                                    Description,
                                    DisplayName,
                                    IsLatest,
                                    IsPublished,
                                    IsSingleton,
                                    Name,
                                    PersistenceBehavior,
                                    Tag,
                                    TenantId,
                                    Version,
                                    CreatedAt
                                )
                                VALUES (
                                    '7f45ce8560b5448194fd68eebb918bf6',
                                    '{
  "$id": "1",
  "activities": [
    {
      "$id": "2",
      "activityId": "68d13fe1-40cf-4737-8803-f5400478509a",
      "type": "HttpEndpoint",
      "displayName": "HTTP Endpoint",
      "persistWorkflow": false,
      "loadWorkflowContext": false,
      "saveWorkflowContext": false,
      "properties": [
        {
          "$id": "3",
          "name": "Path",
          "expressions": {
            "$id": "4",
            "Literal": "/bmi"
          }
        },
        {
          "$id": "5",
          "name": "Methods",
          "expressions": {
            "$id": "6",
            "Json": "[\"POST\"]"
          }
        },
        {
          "$id": "7",
          "name": "ReadContent",
          "expressions": {
            "$id": "8",
            "Literal": "true"
          }
        },
        {
          "$id": "9",
          "name": "TargetType",
          "expressions": {
            "$id": "10"
          }
        },
        {
          "$id": "11",
          "name": "Schema",
          "syntax": "Literal",
          "expressions": {
            "$id": "12",
            "Literal": ""
          }
        },
        {
          "$id": "13",
          "name": "Authorize",
          "expressions": {
            "$id": "14"
          }
        },
        {
          "$id": "15",
          "name": "Policy",
          "expressions": {
            "$id": "16"
          }
        }
      ],
      "propertyStorageProviders": {}
    },
    {
      "$id": "17",
      "activityId": "08ace775-b5e5-48ab-b937-da2caa026448",
      "type": "SetVariable",
      "displayName": "Set Variable",
      "persistWorkflow": false,
      "loadWorkflowContext": false,
      "saveWorkflowContext": false,
      "properties": [
        {
          "$id": "18",
          "name": "VariableName",
          "expressions": {
            "$id": "19",
            "Literal": "mydata"
          }
        },
        {
          "$id": "20",
          "name": "Value",
          "syntax": "JavaScript",
          "expressions": {
            "$id": "21",
            "JavaScript": "input.Body"
          }
        }
      ],
      "propertyStorageProviders": {}
    },
    {
      "$id": "22",
      "activityId": "cf812a65-140d-47a1-8c08-3bf8706106b0",
      "type": "WriteHttpResponse",
      "displayName": "HTTP Response",
      "persistWorkflow": false,
      "loadWorkflowContext": false,
      "saveWorkflowContext": false,
      "properties": [
        {
          "$id": "23",
          "name": "Content",
          "syntax": "Liquid",
          "expressions": {
            "$id": "24",
            "Liquid": "Data Received {{ Variables.mydata.Name }} {{ Variables.mydata.Height }} {{ Variables.mydata.Weight }} {{ Variables.bmi }}"
          }
        },
        {
          "$id": "25",
          "name": "ContentType",
          "expressions": {
            "$id": "26",
            "Literal": "text/html"
          }
        },
        {
          "$id": "27",
          "name": "StatusCode",
          "expressions": {
            "$id": "28",
            "Literal": "OK"
          }
        },
        {
          "$id": "29",
          "name": "CharSet",
          "expressions": {
            "$id": "30"
          }
        },
        {
          "$id": "31",
          "name": "ResponseHeaders",
          "expressions": {
            "$id": "32"
          }
        }
      ],
      "propertyStorageProviders": {}
    },
    {
      "$id": "33",
      "activityId": "80987150-1b9c-4879-8d33-6f16f78332f8",
      "type": "RunJavaScript",
      "displayName": "Run JavaScript",
      "persistWorkflow": false,
      "loadWorkflowContext": false,
      "saveWorkflowContext": false,
      "properties": [
        {
          "$id": "34",
          "name": "Script",
          "syntax": "Literal",
          "expressions": {
            "$id": "35",
            "Literal": "setVariable(\"bmi\",mydata.Weight/mydata.Height/mydata.Height)"
          }
        },
        {
          "$id": "36",
          "name": "PossibleOutcomes",
          "expressions": {
            "$id": "37"
          }
        }
      ],
      "propertyStorageProviders": {}
    }
  ],
  "connections": [
    {
      "$id": "38",
      "sourceActivityId": "68d13fe1-40cf-4737-8803-f5400478509a",
      "targetActivityId": "08ace775-b5e5-48ab-b937-da2caa026448",
      "outcome": "Done"
    },
    {
      "$id": "39",
      "sourceActivityId": "08ace775-b5e5-48ab-b937-da2caa026448",
      "targetActivityId": "80987150-1b9c-4879-8d33-6f16f78332f8",
      "outcome": "Done"
    },
    {
      "$id": "40",
      "sourceActivityId": "80987150-1b9c-4879-8d33-6f16f78332f8",
      "targetActivityId": "cf812a65-140d-47a1-8c08-3bf8706106b0",
      "outcome": "Done"
    }
  ],
  "variables": {
    "$id": "41",
    "data": {}
  },
  "customAttributes": {
    "$id": "42",
    "data": {}
  }
}',
                                    'd2c6193b3473441e83203f9f5639b39b',
                                    0,
                                    NULL,
                                    NULL,
                                    1,
                                    1,
                                    0,
                                    'setvariale',
                                    1,
                                    NULL,
                                    NULL,
                                    6,
                                    '2022-06-07 01:09:36.5170306'
                                );

INSERT INTO WorkflowDefinitions (
                                    Id,
                                    Data,
                                    DefinitionId,
                                    DeleteCompletedInstances,
                                    Description,
                                    DisplayName,
                                    IsLatest,
                                    IsPublished,
                                    IsSingleton,
                                    Name,
                                    PersistenceBehavior,
                                    Tag,
                                    TenantId,
                                    Version,
                                    CreatedAt
                                )
                                VALUES (
                                    '0f92606335434a1fa5ed631c9fb027b0',
                                    '{
  "$id": "1",
  "activities": [
    {
      "$id": "2",
      "activityId": "55da7374-13ea-49e2-8099-9e7e2513e8a2",
      "type": "HttpEndpoint",
      "displayName": "HTTP Endpoint",
      "persistWorkflow": false,
      "loadWorkflowContext": false,
      "saveWorkflowContext": false,
      "properties": [
        {
          "$id": "3",
          "name": "Path",
          "expressions": {
            "$id": "4",
            "Literal": "/leaveapprove"
          }
        },
        {
          "$id": "5",
          "name": "Methods",
          "expressions": {
            "$id": "6",
            "Json": "[\"POST\"]"
          }
        },
        {
          "$id": "7",
          "name": "ReadContent",
          "expressions": {
            "$id": "8",
            "Literal": "true"
          }
        },
        {
          "$id": "9",
          "name": "TargetType",
          "expressions": {
            "$id": "10"
          }
        },
        {
          "$id": "11",
          "name": "Schema",
          "syntax": "Literal",
          "expressions": {
            "$id": "12",
            "Literal": ""
          }
        },
        {
          "$id": "13",
          "name": "Authorize",
          "expressions": {
            "$id": "14"
          }
        },
        {
          "$id": "15",
          "name": "Policy",
          "expressions": {
            "$id": "16"
          }
        }
      ],
      "propertyStorageProviders": {}
    },
    {
      "$id": "17",
      "activityId": "a88a6e9c-42b6-4709-b6c7-24c947d0a05e",
      "type": "SetVariable",
      "displayName": "Set Variable",
      "persistWorkflow": false,
      "loadWorkflowContext": false,
      "saveWorkflowContext": false,
      "properties": [
        {
          "$id": "18",
          "name": "VariableName",
          "expressions": {
            "$id": "19",
            "Literal": "mydata"
          }
        },
        {
          "$id": "20",
          "name": "Value",
          "syntax": "JavaScript",
          "expressions": {
            "$id": "21",
            "JavaScript": "input.Body"
          }
        }
      ],
      "propertyStorageProviders": {}
    },
    {
      "$id": "22",
      "activityId": "dac9fadd-0ed9-49a3-962e-f96939f7ba6e",
      "type": "Fork",
      "displayName": "Fork",
      "persistWorkflow": false,
      "loadWorkflowContext": false,
      "saveWorkflowContext": false,
      "properties": [
        {
          "$id": "23",
          "name": "Branches",
          "expressions": {
            "$id": "24",
            "Json": "[\"approve\",\"reject\"]"
          }
        }
      ],
      "propertyStorageProviders": {}
    },
    {
      "$id": "25",
      "activityId": "32d7eef9-1b28-4881-a3aa-923106f91291",
      "type": "SignalReceived",
      "displayName": "Signal Received",
      "persistWorkflow": false,
      "loadWorkflowContext": false,
      "saveWorkflowContext": false,
      "properties": [
        {
          "$id": "26",
          "name": "Signal",
          "expressions": {
            "$id": "27",
            "Literal": "approve"
          }
        }
      ],
      "propertyStorageProviders": {}
    },
    {
      "$id": "28",
      "activityId": "10dee174-36ce-45b5-a99b-2112c160cc8c",
      "type": "SignalReceived",
      "displayName": "Signal Received",
      "persistWorkflow": false,
      "loadWorkflowContext": false,
      "saveWorkflowContext": false,
      "properties": [
        {
          "$id": "29",
          "name": "Signal",
          "expressions": {
            "$id": "30",
            "Literal": "reject"
          }
        }
      ],
      "propertyStorageProviders": {}
    },
    {
      "$id": "31",
      "activityId": "4c22150b-e43f-45eb-93c3-ed4a33df468e",
      "type": "WriteHttpResponse",
      "displayName": "HTTP Response",
      "persistWorkflow": false,
      "loadWorkflowContext": false,
      "saveWorkflowContext": false,
      "properties": [
        {
          "$id": "32",
          "name": "Content",
          "syntax": "Liquid",
          "expressions": {
            "$id": "33",
            "Literal": "Approved is {{  }}",
            "Liquid": "{{ IsApproved }}"
          }
        },
        {
          "$id": "34",
          "name": "ContentType",
          "expressions": {
            "$id": "35"
          }
        },
        {
          "$id": "36",
          "name": "StatusCode",
          "expressions": {
            "$id": "37"
          }
        },
        {
          "$id": "38",
          "name": "CharSet",
          "expressions": {
            "$id": "39"
          }
        },
        {
          "$id": "40",
          "name": "ResponseHeaders",
          "expressions": {
            "$id": "41"
          }
        }
      ],
      "propertyStorageProviders": {}
    },
    {
      "$id": "42",
      "activityId": "3c9ca1bb-f817-4b9a-9229-c606f79cae59",
      "type": "Join",
      "displayName": "Join",
      "persistWorkflow": false,
      "loadWorkflowContext": false,
      "saveWorkflowContext": false,
      "properties": [
        {
          "$id": "43",
          "name": "Mode",
          "expressions": {
            "$id": "44",
            "Literal": "WaitAny"
          }
        }
      ],
      "propertyStorageProviders": {}
    },
    {
      "$id": "45",
      "activityId": "6b43c3b3-2bbd-4d6d-81b7-ea60af492f9e",
      "type": "SetVariable",
      "displayName": "Set Variable",
      "persistWorkflow": false,
      "loadWorkflowContext": false,
      "saveWorkflowContext": false,
      "properties": [
        {
          "$id": "46",
          "name": "VariableName",
          "expressions": {
            "$id": "47",
            "Literal": "IsApproved"
          }
        },
        {
          "$id": "48",
          "name": "Value",
          "syntax": "JavaScript",
          "expressions": {
            "$id": "49",
            "Literal": "false",
            "JavaScript": "false"
          }
        }
      ],
      "propertyStorageProviders": {}
    },
    {
      "$id": "50",
      "activityId": "bc966760-e353-49ae-9bdd-bae1da6cf906",
      "type": "SetVariable",
      "displayName": "Set Variable",
      "persistWorkflow": false,
      "loadWorkflowContext": false,
      "saveWorkflowContext": false,
      "properties": [
        {
          "$id": "51",
          "name": "VariableName",
          "expressions": {
            "$id": "52",
            "Literal": "IsApproved"
          }
        },
        {
          "$id": "53",
          "name": "Value",
          "syntax": "JavaScript",
          "expressions": {
            "$id": "54",
            "JavaScript": "true"
          }
        }
      ],
      "propertyStorageProviders": {}
    },
    {
      "$id": "55",
      "activityId": "750f4c01-e799-454f-a640-acde83ee4797",
      "type": "WriteHttpResponse",
      "displayName": "HTTP Response",
      "persistWorkflow": false,
      "loadWorkflowContext": false,
      "saveWorkflowContext": false,
      "properties": [
        {
          "$id": "56",
          "name": "Content",
          "syntax": "Liquid",
          "expressions": {
            "$id": "57",
            "Liquid": "{{IsApproved}}"
          }
        },
        {
          "$id": "58",
          "name": "ContentType",
          "expressions": {
            "$id": "59"
          }
        },
        {
          "$id": "60",
          "name": "StatusCode",
          "expressions": {
            "$id": "61",
            "Literal": "OK"
          }
        },
        {
          "$id": "62",
          "name": "CharSet",
          "expressions": {
            "$id": "63"
          }
        },
        {
          "$id": "64",
          "name": "ResponseHeaders",
          "expressions": {
            "$id": "65"
          }
        }
      ],
      "propertyStorageProviders": {}
    }
  ],
  "connections": [
    {
      "$id": "66",
      "sourceActivityId": "55da7374-13ea-49e2-8099-9e7e2513e8a2",
      "targetActivityId": "a88a6e9c-42b6-4709-b6c7-24c947d0a05e",
      "outcome": "Done"
    },
    {
      "$id": "67",
      "sourceActivityId": "a88a6e9c-42b6-4709-b6c7-24c947d0a05e",
      "targetActivityId": "dac9fadd-0ed9-49a3-962e-f96939f7ba6e",
      "outcome": "Done"
    },
    {
      "$id": "68",
      "sourceActivityId": "dac9fadd-0ed9-49a3-962e-f96939f7ba6e",
      "targetActivityId": "32d7eef9-1b28-4881-a3aa-923106f91291",
      "outcome": "approve"
    },
    {
      "$id": "69",
      "sourceActivityId": "dac9fadd-0ed9-49a3-962e-f96939f7ba6e",
      "targetActivityId": "10dee174-36ce-45b5-a99b-2112c160cc8c",
      "outcome": "reject"
    },
    {
      "$id": "70",
      "sourceActivityId": "10dee174-36ce-45b5-a99b-2112c160cc8c",
      "targetActivityId": "6b43c3b3-2bbd-4d6d-81b7-ea60af492f9e",
      "outcome": "Done"
    },
    {
      "$id": "71",
      "sourceActivityId": "6b43c3b3-2bbd-4d6d-81b7-ea60af492f9e",
      "targetActivityId": "3c9ca1bb-f817-4b9a-9229-c606f79cae59",
      "outcome": "Done"
    },
    {
      "$id": "72",
      "sourceActivityId": "32d7eef9-1b28-4881-a3aa-923106f91291",
      "targetActivityId": "bc966760-e353-49ae-9bdd-bae1da6cf906",
      "outcome": "Done"
    },
    {
      "$id": "73",
      "sourceActivityId": "bc966760-e353-49ae-9bdd-bae1da6cf906",
      "targetActivityId": "3c9ca1bb-f817-4b9a-9229-c606f79cae59",
      "outcome": "Done"
    },
    {
      "$id": "74",
      "sourceActivityId": "3c9ca1bb-f817-4b9a-9229-c606f79cae59",
      "targetActivityId": "750f4c01-e799-454f-a640-acde83ee4797",
      "outcome": "Done"
    }
  ],
  "variables": {
    "$id": "75",
    "data": {}
  },
  "customAttributes": {
    "$id": "76",
    "data": {}
  }
}',
                                    '539d52828fdf4cf290920ea4313dacb7',
                                    0,
                                    NULL,
                                    NULL,
                                    0,
                                    0,
                                    0,
                                    'LeaveApprove',
                                    1,
                                    NULL,
                                    NULL,
                                    1,
                                    '2022-06-07 06:36:59.1881824'
                                );

INSERT INTO WorkflowDefinitions (
                                    Id,
                                    Data,
                                    DefinitionId,
                                    DeleteCompletedInstances,
                                    Description,
                                    DisplayName,
                                    IsLatest,
                                    IsPublished,
                                    IsSingleton,
                                    Name,
                                    PersistenceBehavior,
                                    Tag,
                                    TenantId,
                                    Version,
                                    CreatedAt
                                )
                                VALUES (
                                    '360242e8bca843f7a310b462a53dea6d',
                                    '{
  "$id": "1",
  "activities": [
    {
      "$id": "2",
      "activityId": "55da7374-13ea-49e2-8099-9e7e2513e8a2",
      "type": "HttpEndpoint",
      "displayName": "HTTP Endpoint",
      "persistWorkflow": false,
      "loadWorkflowContext": false,
      "saveWorkflowContext": false,
      "properties": [
        {
          "$id": "3",
          "name": "Path",
          "expressions": {
            "$id": "4",
            "Literal": "/leaveapprove"
          }
        },
        {
          "$id": "5",
          "name": "Methods",
          "expressions": {
            "$id": "6",
            "Json": "[\"POST\"]"
          }
        },
        {
          "$id": "7",
          "name": "ReadContent",
          "expressions": {
            "$id": "8",
            "Literal": "true"
          }
        },
        {
          "$id": "9",
          "name": "TargetType",
          "expressions": {
            "$id": "10"
          }
        },
        {
          "$id": "11",
          "name": "Schema",
          "syntax": "Literal",
          "expressions": {
            "$id": "12",
            "Literal": ""
          }
        },
        {
          "$id": "13",
          "name": "Authorize",
          "expressions": {
            "$id": "14"
          }
        },
        {
          "$id": "15",
          "name": "Policy",
          "expressions": {
            "$id": "16"
          }
        }
      ],
      "propertyStorageProviders": {}
    },
    {
      "$id": "17",
      "activityId": "a88a6e9c-42b6-4709-b6c7-24c947d0a05e",
      "type": "SetVariable",
      "displayName": "Set Variable",
      "persistWorkflow": false,
      "loadWorkflowContext": false,
      "saveWorkflowContext": false,
      "properties": [
        {
          "$id": "18",
          "name": "VariableName",
          "expressions": {
            "$id": "19",
            "Literal": "mydata"
          }
        },
        {
          "$id": "20",
          "name": "Value",
          "syntax": "JavaScript",
          "expressions": {
            "$id": "21",
            "JavaScript": "input.Body"
          }
        }
      ],
      "propertyStorageProviders": {}
    },
    {
      "$id": "22",
      "activityId": "dac9fadd-0ed9-49a3-962e-f96939f7ba6e",
      "type": "Fork",
      "displayName": "Fork",
      "persistWorkflow": false,
      "loadWorkflowContext": false,
      "saveWorkflowContext": false,
      "properties": [
        {
          "$id": "23",
          "name": "Branches",
          "expressions": {
            "$id": "24",
            "Json": "[\"approve\",\"reject\"]"
          }
        }
      ],
      "propertyStorageProviders": {}
    },
    {
      "$id": "25",
      "activityId": "32d7eef9-1b28-4881-a3aa-923106f91291",
      "type": "SignalReceived",
      "displayName": "Signal Received",
      "persistWorkflow": false,
      "loadWorkflowContext": false,
      "saveWorkflowContext": false,
      "properties": [
        {
          "$id": "26",
          "name": "Signal",
          "expressions": {
            "$id": "27",
            "Literal": "Approve"
          }
        }
      ],
      "propertyStorageProviders": {}
    },
    {
      "$id": "28",
      "activityId": "10dee174-36ce-45b5-a99b-2112c160cc8c",
      "type": "SignalReceived",
      "displayName": "Signal Received",
      "persistWorkflow": false,
      "loadWorkflowContext": false,
      "saveWorkflowContext": false,
      "properties": [
        {
          "$id": "29",
          "name": "Signal",
          "expressions": {
            "$id": "30",
            "Literal": "Reject"
          }
        }
      ],
      "propertyStorageProviders": {}
    },
    {
      "$id": "31",
      "activityId": "3c9ca1bb-f817-4b9a-9229-c606f79cae59",
      "type": "Join",
      "displayName": "Join",
      "persistWorkflow": false,
      "loadWorkflowContext": false,
      "saveWorkflowContext": false,
      "properties": [
        {
          "$id": "32",
          "name": "Mode",
          "expressions": {
            "$id": "33",
            "Literal": "WaitAny"
          }
        }
      ],
      "propertyStorageProviders": {}
    },
    {
      "$id": "34",
      "activityId": "6b43c3b3-2bbd-4d6d-81b7-ea60af492f9e",
      "type": "SetVariable",
      "displayName": "Set Variable",
      "persistWorkflow": false,
      "loadWorkflowContext": false,
      "saveWorkflowContext": false,
      "properties": [
        {
          "$id": "35",
          "name": "VariableName",
          "expressions": {
            "$id": "36",
            "Literal": "IsApproved"
          }
        },
        {
          "$id": "37",
          "name": "Value",
          "syntax": "JavaScript",
          "expressions": {
            "$id": "38",
            "Literal": "false",
            "JavaScript": "false"
          }
        }
      ],
      "propertyStorageProviders": {}
    },
    {
      "$id": "39",
      "activityId": "bc966760-e353-49ae-9bdd-bae1da6cf906",
      "type": "SetVariable",
      "displayName": "Set Variable",
      "persistWorkflow": false,
      "loadWorkflowContext": false,
      "saveWorkflowContext": false,
      "properties": [
        {
          "$id": "40",
          "name": "VariableName",
          "expressions": {
            "$id": "41",
            "Literal": "IsApproved"
          }
        },
        {
          "$id": "42",
          "name": "Value",
          "syntax": "JavaScript",
          "expressions": {
            "$id": "43",
            "JavaScript": "true"
          }
        }
      ],
      "propertyStorageProviders": {}
    },
    {
      "$id": "44",
      "activityId": "750f4c01-e799-454f-a640-acde83ee4797",
      "type": "WriteHttpResponse",
      "displayName": "HTTP Response",
      "persistWorkflow": false,
      "loadWorkflowContext": false,
      "saveWorkflowContext": false,
      "properties": [
        {
          "$id": "45",
          "name": "Content",
          "syntax": "Liquid",
          "expressions": {
            "$id": "46",
            "Liquid": "{{IsApproved}}"
          }
        },
        {
          "$id": "47",
          "name": "ContentType",
          "expressions": {
            "$id": "48"
          }
        },
        {
          "$id": "49",
          "name": "StatusCode",
          "expressions": {
            "$id": "50",
            "Literal": "OK"
          }
        },
        {
          "$id": "51",
          "name": "CharSet",
          "expressions": {
            "$id": "52"
          }
        },
        {
          "$id": "53",
          "name": "ResponseHeaders",
          "expressions": {
            "$id": "54"
          }
        }
      ],
      "propertyStorageProviders": {}
    },
    {
      "$id": "55",
      "activityId": "94e88ab3-507a-44c2-9147-528b25187649",
      "type": "WriteHttpResponse",
      "displayName": "HTTP Response",
      "persistWorkflow": false,
      "loadWorkflowContext": false,
      "saveWorkflowContext": false,
      "properties": [
        {
          "$id": "56",
          "name": "Content",
          "syntax": "Liquid",
          "expressions": {
            "$id": "57",
            "Liquid": "approve: {{ \"Approve\" | signal_url }} \r\nreject: {{ \"Reject\" | signal_url }}"
          }
        },
        {
          "$id": "58",
          "name": "ContentType",
          "expressions": {
            "$id": "59"
          }
        },
        {
          "$id": "60",
          "name": "StatusCode",
          "expressions": {
            "$id": "61"
          }
        },
        {
          "$id": "62",
          "name": "CharSet",
          "expressions": {
            "$id": "63"
          }
        },
        {
          "$id": "64",
          "name": "ResponseHeaders",
          "expressions": {
            "$id": "65"
          }
        }
      ],
      "propertyStorageProviders": {}
    }
  ],
  "connections": [
    {
      "$id": "66",
      "sourceActivityId": "55da7374-13ea-49e2-8099-9e7e2513e8a2",
      "targetActivityId": "a88a6e9c-42b6-4709-b6c7-24c947d0a05e",
      "outcome": "Done"
    },
    {
      "$id": "67",
      "sourceActivityId": "dac9fadd-0ed9-49a3-962e-f96939f7ba6e",
      "targetActivityId": "32d7eef9-1b28-4881-a3aa-923106f91291",
      "outcome": "approve"
    },
    {
      "$id": "68",
      "sourceActivityId": "dac9fadd-0ed9-49a3-962e-f96939f7ba6e",
      "targetActivityId": "10dee174-36ce-45b5-a99b-2112c160cc8c",
      "outcome": "reject"
    },
    {
      "$id": "69",
      "sourceActivityId": "10dee174-36ce-45b5-a99b-2112c160cc8c",
      "targetActivityId": "6b43c3b3-2bbd-4d6d-81b7-ea60af492f9e",
      "outcome": "Done"
    },
    {
      "$id": "70",
      "sourceActivityId": "6b43c3b3-2bbd-4d6d-81b7-ea60af492f9e",
      "targetActivityId": "3c9ca1bb-f817-4b9a-9229-c606f79cae59",
      "outcome": "Done"
    },
    {
      "$id": "71",
      "sourceActivityId": "32d7eef9-1b28-4881-a3aa-923106f91291",
      "targetActivityId": "bc966760-e353-49ae-9bdd-bae1da6cf906",
      "outcome": "Done"
    },
    {
      "$id": "72",
      "sourceActivityId": "bc966760-e353-49ae-9bdd-bae1da6cf906",
      "targetActivityId": "3c9ca1bb-f817-4b9a-9229-c606f79cae59",
      "outcome": "Done"
    },
    {
      "$id": "73",
      "sourceActivityId": "3c9ca1bb-f817-4b9a-9229-c606f79cae59",
      "targetActivityId": "750f4c01-e799-454f-a640-acde83ee4797",
      "outcome": "Done"
    },
    {
      "$id": "74",
      "sourceActivityId": "a88a6e9c-42b6-4709-b6c7-24c947d0a05e",
      "targetActivityId": "94e88ab3-507a-44c2-9147-528b25187649",
      "outcome": "Done"
    },
    {
      "$id": "75",
      "sourceActivityId": "94e88ab3-507a-44c2-9147-528b25187649",
      "targetActivityId": "dac9fadd-0ed9-49a3-962e-f96939f7ba6e",
      "outcome": "Done"
    }
  ],
  "variables": {
    "$id": "76",
    "data": {}
  },
  "customAttributes": {
    "$id": "77",
    "data": {}
  }
}',
                                    '539d52828fdf4cf290920ea4313dacb7',
                                    0,
                                    NULL,
                                    NULL,
                                    1,
                                    1,
                                    0,
                                    'LeaveApprove',
                                    1,
                                    NULL,
                                    NULL,
                                    2,
                                    '2022-06-07 07:27:48.7592698'
                                );


-- 表：WorkflowExecutionLogRecords
CREATE TABLE IF NOT EXISTS WorkflowExecutionLogRecords (
    Id                 TEXT NOT NULL
                            CONSTRAINT PK_WorkflowExecutionLogRecords PRIMARY KEY,
    TenantId           TEXT,
    WorkflowInstanceId TEXT NOT NULL,
    ActivityId         TEXT NOT NULL,
    ActivityType       TEXT NOT NULL,
    Timestamp          TEXT NOT NULL,
    EventName          TEXT,
    Message            TEXT,
    Source             TEXT,
    Data               TEXT
);

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '0ef17ddef7b04a639f0fae2a5b075670',
                                            NULL,
                                            '90918ea41f9a45e8bbc072e9c4f44aa6',
                                            '479d5e06-798c-4e7c-9840-369abe48aa6a',
                                            'HttpEndpoint',
                                            '2022-06-04 02:13:56.2294103',
                                            'Executing',
                                            NULL,
                                            NULL,
                                            NULL
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '2a53e654441c433d8b3f66d6812c4100',
                                            NULL,
                                            '90918ea41f9a45e8bbc072e9c4f44aa6',
                                            '6e851021-1127-4c07-a1db-15e1659c6da8',
                                            'WriteHttpResponse',
                                            '2022-06-04 02:13:56.2658932',
                                            'Executing',
                                            NULL,
                                            NULL,
                                            NULL
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '31ff808b3e8e4935a46eff3293dc08e4',
                                            NULL,
                                            '90918ea41f9a45e8bbc072e9c4f44aa6',
                                            '479d5e06-798c-4e7c-9840-369abe48aa6a',
                                            'HttpEndpoint',
                                            '2022-06-04 02:13:56.256421',
                                            'Executed',
                                            NULL,
                                            NULL,
                                            '{
  "Outcomes": [
    "Done"
  ],
  "Inbound Request": {
    "$id": "1",
    "path": "/hello-world",
    "method": "GET",
    "queryString": {
      "$id": "2"
    },
    "routeValues": {
      "$id": "3",
      "$type": "Microsoft.AspNetCore.Routing.RouteValueDictionary, Microsoft.AspNetCore.Http.Abstractions"
    },
    "headers": {
      "$id": "4",
      "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8",
      "Connection": "keep-alive",
      "Host": "localhost:5298",
      "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:101.0) Gecko/20100101 Firefox/101.0",
      "Accept-Encoding": "gzip, deflate, br",
      "Accept-Language": "zh-CN,zh;q=0.8,zh-TW;q=0.7,zh-HK;q=0.5,en-US;q=0.3,en;q=0.2",
      "Cookie": "XSRF-TOKEN=CfDJ8GEOui0fo-dFpWFI2S7d5fnWgf9CsI8xz37tpDWwOPsh6pfZF764muiBQcQvW7d1Nr8qbR2Nx9eQric_iF1KutV-jk4MbX7VT5AQs6q3ZM5ZwyzseJcH3lXJi8PHOMn1sBlYNooAzoHTlZiN0N49Zm0BSBVMTRmWQkFOwaIvgDBBZV4FXh_N3qTcp04bI0HrbA; .AspNetCore.Culture=c%3Dzh-Hans%7Cuic%3Dzh-Hans; ai_user=Ddi3D|2022-03-11T09:26:30.917Z",
      "Upgrade-Insecure-Requests": "1",
      "Sec-Fetch-Dest": "document",
      "Sec-Fetch-Mode": "navigate",
      "Sec-Fetch-Site": "none",
      "Sec-Fetch-User": "?1"
    }
  }
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            'e388aefc1d51404ea450d2d3be7ec513',
                                            NULL,
                                            '90918ea41f9a45e8bbc072e9c4f44aa6',
                                            '6e851021-1127-4c07-a1db-15e1659c6da8',
                                            'WriteHttpResponse',
                                            '2022-06-04 02:13:56.2746452',
                                            'Executed',
                                            NULL,
                                            NULL,
                                            '{
  "Outcomes": [
    "Done"
  ]
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '02304362a19443278420b85663cc3fdf',
                                            NULL,
                                            'a40b810f6be24aefafab6d36e19be9c9',
                                            '68d13fe1-40cf-4737-8803-f5400478509a',
                                            'HttpEndpoint',
                                            '2022-06-07 00:45:46.6692938',
                                            'Executing',
                                            NULL,
                                            NULL,
                                            NULL
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '0a066d3135f848aeb46b3bd0d60a55e5',
                                            NULL,
                                            'a40b810f6be24aefafab6d36e19be9c9',
                                            '68d13fe1-40cf-4737-8803-f5400478509a',
                                            'HttpEndpoint',
                                            '2022-06-07 00:45:46.6969392',
                                            'Executed',
                                            NULL,
                                            NULL,
                                            '{
  "Outcomes": [
    "Done"
  ],
  "Inbound Request": {
    "$id": "1",
    "path": "/bmi",
    "method": "POST",
    "queryString": {
      "$id": "2"
    },
    "routeValues": {
      "$id": "3",
      "$type": "Microsoft.AspNetCore.Routing.RouteValueDictionary, Microsoft.AspNetCore.Http.Abstractions"
    },
    "headers": {
      "$id": "4",
      "Accept": "*/*",
      "Connection": "keep-alive",
      "Host": "localhost:5298",
      "User-Agent": "PostmanRuntime/7.29.0",
      "Accept-Encoding": "gzip, deflate, br",
      "Content-Type": "application/json",
      "Content-Length": "63",
      "Postman-Token": "8a4cd2de-e625-44e0-afed-94fb26394e2d"
    },
    "body": {
      "$id": "5",
      "$type": "System.Dynamic.ExpandoObject, System.Linq.Expressions",
      "Name": "张三",
      "Height": 1.75,
      "Weight": 75
    },
    "rawBody": "{\r\n    \"Name\":\"张三\",\r\n    \"Height\":1.75,\r\n    \"Weight\":75\r\n}"
  }
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '41e5e5e7ae044258a2a28cf2b1404e32',
                                            NULL,
                                            'a40b810f6be24aefafab6d36e19be9c9',
                                            'cf812a65-140d-47a1-8c08-3bf8706106b0',
                                            'WriteHttpResponse',
                                            '2022-06-07 00:45:47.0162996',
                                            'Executed',
                                            NULL,
                                            NULL,
                                            '{
  "Outcomes": [
    "Done"
  ]
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '9fb326145ea74b8286b397a4470347b1',
                                            NULL,
                                            'a40b810f6be24aefafab6d36e19be9c9',
                                            '08ace775-b5e5-48ab-b937-da2caa026448',
                                            'SetVariable',
                                            '2022-06-07 00:45:46.9591599',
                                            'Executing',
                                            NULL,
                                            NULL,
                                            NULL
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            'ceb5dfbd30c346a29b56fe49c4336b34',
                                            NULL,
                                            'a40b810f6be24aefafab6d36e19be9c9',
                                            'cf812a65-140d-47a1-8c08-3bf8706106b0',
                                            'WriteHttpResponse',
                                            '2022-06-07 00:45:47.0107716',
                                            'Executing',
                                            NULL,
                                            NULL,
                                            NULL
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            'd166144beb0a4d28b7dfab44d4738f95',
                                            NULL,
                                            'a40b810f6be24aefafab6d36e19be9c9',
                                            '08ace775-b5e5-48ab-b937-da2caa026448',
                                            'SetVariable',
                                            '2022-06-07 00:45:46.9609896',
                                            'Executed',
                                            NULL,
                                            NULL,
                                            '{
  "Outcomes": [
    "Done"
  ]
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '098f5ae840d047f2bc97dcfc8e872e54',
                                            NULL,
                                            '5797f6e71bc04f00b68f83653bdb52eb',
                                            '68d13fe1-40cf-4737-8803-f5400478509a',
                                            'HttpEndpoint',
                                            '2022-06-07 00:49:49.0161176',
                                            'Executed',
                                            NULL,
                                            NULL,
                                            '{
  "Outcomes": [
    "Done"
  ],
  "Inbound Request": {
    "$id": "1",
    "path": "/bmi",
    "method": "POST",
    "queryString": {
      "$id": "2"
    },
    "routeValues": {
      "$id": "3",
      "$type": "Microsoft.AspNetCore.Routing.RouteValueDictionary, Microsoft.AspNetCore.Http.Abstractions"
    },
    "headers": {
      "$id": "4",
      "Accept": "*/*",
      "Connection": "keep-alive",
      "Host": "localhost:5298",
      "User-Agent": "PostmanRuntime/7.29.0",
      "Accept-Encoding": "gzip, deflate, br",
      "Content-Type": "application/json",
      "Content-Length": "63",
      "Postman-Token": "dd1f76a1-b0b0-41d1-861e-bb8f7be69f1e"
    },
    "body": {
      "$id": "5",
      "$type": "System.Dynamic.ExpandoObject, System.Linq.Expressions",
      "Name": "张三",
      "Height": 1.75,
      "Weight": 75
    },
    "rawBody": "{\r\n    \"Name\":\"张三\",\r\n    \"Height\":1.75,\r\n    \"Weight\":75\r\n}"
  }
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '4ac4bd6043b04be29e566f7aef5dacb6',
                                            NULL,
                                            '5797f6e71bc04f00b68f83653bdb52eb',
                                            'cf812a65-140d-47a1-8c08-3bf8706106b0',
                                            'WriteHttpResponse',
                                            '2022-06-07 00:49:49.045733',
                                            'Executed',
                                            NULL,
                                            NULL,
                                            '{
  "Outcomes": [
    "Done"
  ]
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '61013101a22d422190582aeba7d6cb43',
                                            NULL,
                                            '5797f6e71bc04f00b68f83653bdb52eb',
                                            '68d13fe1-40cf-4737-8803-f5400478509a',
                                            'HttpEndpoint',
                                            '2022-06-07 00:49:49.0157928',
                                            'Executing',
                                            NULL,
                                            NULL,
                                            NULL
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            'b8b05e658b0241529be0853b372e9d7b',
                                            NULL,
                                            '5797f6e71bc04f00b68f83653bdb52eb',
                                            '08ace775-b5e5-48ab-b937-da2caa026448',
                                            'SetVariable',
                                            '2022-06-07 00:49:49.0182686',
                                            'Executed',
                                            NULL,
                                            NULL,
                                            '{
  "Outcomes": [
    "Done"
  ]
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            'c22cf2f68a984d2db6fee679240856d7',
                                            NULL,
                                            '5797f6e71bc04f00b68f83653bdb52eb',
                                            'cf812a65-140d-47a1-8c08-3bf8706106b0',
                                            'WriteHttpResponse',
                                            '2022-06-07 00:49:49.0452685',
                                            'Executing',
                                            NULL,
                                            NULL,
                                            NULL
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            'd4a222500e6d400088b6119cf786509c',
                                            NULL,
                                            '5797f6e71bc04f00b68f83653bdb52eb',
                                            '08ace775-b5e5-48ab-b937-da2caa026448',
                                            'SetVariable',
                                            '2022-06-07 00:49:49.0180489',
                                            'Executing',
                                            NULL,
                                            NULL,
                                            NULL
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '172240c4a3d845b3a7a81d13ff5f2406',
                                            NULL,
                                            '9cbe35a40c4345c98df2481af9fc8628',
                                            '08ace775-b5e5-48ab-b937-da2caa026448',
                                            'SetVariable',
                                            '2022-06-07 00:50:28.3267157',
                                            'Executing',
                                            NULL,
                                            NULL,
                                            NULL
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '4613669f34844af1b979eb839e214fda',
                                            NULL,
                                            '9cbe35a40c4345c98df2481af9fc8628',
                                            'cf812a65-140d-47a1-8c08-3bf8706106b0',
                                            'WriteHttpResponse',
                                            '2022-06-07 00:50:28.3285709',
                                            'Executing',
                                            NULL,
                                            NULL,
                                            NULL
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '599e7195ae91400dbf0a3a6ea179a200',
                                            NULL,
                                            '9cbe35a40c4345c98df2481af9fc8628',
                                            'cf812a65-140d-47a1-8c08-3bf8706106b0',
                                            'WriteHttpResponse',
                                            '2022-06-07 00:50:28.3289646',
                                            'Executed',
                                            NULL,
                                            NULL,
                                            '{
  "Outcomes": [
    "Done"
  ]
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '64e079643d46452389e4c3b1a1a652ae',
                                            NULL,
                                            '9cbe35a40c4345c98df2481af9fc8628',
                                            '68d13fe1-40cf-4737-8803-f5400478509a',
                                            'HttpEndpoint',
                                            '2022-06-07 00:50:28.3251106',
                                            'Executed',
                                            NULL,
                                            NULL,
                                            '{
  "Outcomes": [
    "Done"
  ],
  "Inbound Request": {
    "$id": "1",
    "path": "/bmi",
    "method": "POST",
    "queryString": {
      "$id": "2"
    },
    "routeValues": {
      "$id": "3",
      "$type": "Microsoft.AspNetCore.Routing.RouteValueDictionary, Microsoft.AspNetCore.Http.Abstractions"
    },
    "headers": {
      "$id": "4",
      "Accept": "*/*",
      "Connection": "keep-alive",
      "Host": "localhost:5298",
      "User-Agent": "PostmanRuntime/7.29.0",
      "Accept-Encoding": "gzip, deflate, br",
      "Content-Type": "application/json",
      "Content-Length": "63",
      "Postman-Token": "99ed0548-e410-4bdb-9bc5-d32785e55868"
    },
    "body": {
      "$id": "5",
      "$type": "System.Dynamic.ExpandoObject, System.Linq.Expressions",
      "Name": "张三",
      "Height": 1.75,
      "Weight": 75
    },
    "rawBody": "{\r\n    \"Name\":\"张三\",\r\n    \"Height\":1.75,\r\n    \"Weight\":75\r\n}"
  }
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '9e83bac3804a4be39bd96cfd8b6e6c9e',
                                            NULL,
                                            '9cbe35a40c4345c98df2481af9fc8628',
                                            '08ace775-b5e5-48ab-b937-da2caa026448',
                                            'SetVariable',
                                            '2022-06-07 00:50:28.3268901',
                                            'Executed',
                                            NULL,
                                            NULL,
                                            '{
  "Outcomes": [
    "Done"
  ]
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            'd8dfcdabcc054003bcca65622fbb511f',
                                            NULL,
                                            '9cbe35a40c4345c98df2481af9fc8628',
                                            '68d13fe1-40cf-4737-8803-f5400478509a',
                                            'HttpEndpoint',
                                            '2022-06-07 00:50:28.3248314',
                                            'Executing',
                                            NULL,
                                            NULL,
                                            NULL
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '0eec62482d05456e84e9944294a012a8',
                                            NULL,
                                            '26b7d29e76b94ac2a9ec3f9b5a58e42f',
                                            '08ace775-b5e5-48ab-b937-da2caa026448',
                                            'SetVariable',
                                            '2022-06-07 01:04:37.8325224',
                                            'Executed',
                                            NULL,
                                            NULL,
                                            '{
  "Outcomes": [
    "Done"
  ]
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '1c28492ce9b244baa0472b4bf827810b',
                                            NULL,
                                            '26b7d29e76b94ac2a9ec3f9b5a58e42f',
                                            'cf812a65-140d-47a1-8c08-3bf8706106b0',
                                            'WriteHttpResponse',
                                            '2022-06-07 01:04:37.8334343',
                                            'Executed',
                                            NULL,
                                            NULL,
                                            '{
  "Outcomes": [
    "Done"
  ]
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '8724dad2ac5e47b3b4b1def9ce3c4648',
                                            NULL,
                                            '26b7d29e76b94ac2a9ec3f9b5a58e42f',
                                            '68d13fe1-40cf-4737-8803-f5400478509a',
                                            'HttpEndpoint',
                                            '2022-06-07 01:04:37.8313988',
                                            'Executing',
                                            NULL,
                                            NULL,
                                            NULL
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            'a2bd009b6ec04ab5950949c5a4421633',
                                            NULL,
                                            '26b7d29e76b94ac2a9ec3f9b5a58e42f',
                                            'cf812a65-140d-47a1-8c08-3bf8706106b0',
                                            'WriteHttpResponse',
                                            '2022-06-07 01:04:37.8332263',
                                            'Executing',
                                            NULL,
                                            NULL,
                                            NULL
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            'd2ecf881fdb7421b921d27c5aceb016b',
                                            NULL,
                                            '26b7d29e76b94ac2a9ec3f9b5a58e42f',
                                            '68d13fe1-40cf-4737-8803-f5400478509a',
                                            'HttpEndpoint',
                                            '2022-06-07 01:04:37.8318017',
                                            'Executed',
                                            NULL,
                                            NULL,
                                            '{
  "Outcomes": [
    "Done"
  ],
  "Inbound Request": {
    "$id": "1",
    "path": "/bmi",
    "method": "POST",
    "queryString": {
      "$id": "2"
    },
    "routeValues": {
      "$id": "3",
      "$type": "Microsoft.AspNetCore.Routing.RouteValueDictionary, Microsoft.AspNetCore.Http.Abstractions"
    },
    "headers": {
      "$id": "4",
      "Accept": "*/*",
      "Connection": "keep-alive",
      "Host": "localhost:5298",
      "User-Agent": "PostmanRuntime/7.29.0",
      "Accept-Encoding": "gzip, deflate, br",
      "Content-Type": "application/json",
      "Content-Length": "63",
      "Postman-Token": "81633512-c5fa-4b0c-b7e4-e85dc6fb1805"
    },
    "body": {
      "$id": "5",
      "$type": "System.Dynamic.ExpandoObject, System.Linq.Expressions",
      "Name": "张三",
      "Height": 1.75,
      "Weight": 75
    },
    "rawBody": "{\r\n    \"Name\":\"张三\",\r\n    \"Height\":1.75,\r\n    \"Weight\":75\r\n}"
  }
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            'dfbf85f6bba84a20b24d5c511552bbea',
                                            NULL,
                                            '26b7d29e76b94ac2a9ec3f9b5a58e42f',
                                            '08ace775-b5e5-48ab-b937-da2caa026448',
                                            'SetVariable',
                                            '2022-06-07 01:04:37.832337',
                                            'Executing',
                                            NULL,
                                            NULL,
                                            NULL
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '1241e4995cdb421aadfe99a94ad901d4',
                                            NULL,
                                            '7496cfd047344a359644d44ed80284fe',
                                            '68d13fe1-40cf-4737-8803-f5400478509a',
                                            'HttpEndpoint',
                                            '2022-06-07 01:04:54.4983736',
                                            'Executing',
                                            NULL,
                                            NULL,
                                            NULL
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '47a886483fe04705b35108a3b4478da2',
                                            NULL,
                                            '7496cfd047344a359644d44ed80284fe',
                                            '80987150-1b9c-4879-8d33-6f16f78332f8',
                                            'RunJavaScript',
                                            '2022-06-07 01:04:54.7605991',
                                            'Executed',
                                            NULL,
                                            NULL,
                                            '{
  "Outcomes": []
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '58aa960f3e6146fb8cc5fbe5865ab5c9',
                                            NULL,
                                            '7496cfd047344a359644d44ed80284fe',
                                            '68d13fe1-40cf-4737-8803-f5400478509a',
                                            'HttpEndpoint',
                                            '2022-06-07 01:04:54.4987715',
                                            'Executed',
                                            NULL,
                                            NULL,
                                            '{
  "Outcomes": [
    "Done"
  ],
  "Inbound Request": {
    "$id": "1",
    "path": "/bmi",
    "method": "POST",
    "queryString": {
      "$id": "2"
    },
    "routeValues": {
      "$id": "3",
      "$type": "Microsoft.AspNetCore.Routing.RouteValueDictionary, Microsoft.AspNetCore.Http.Abstractions"
    },
    "headers": {
      "$id": "4",
      "Accept": "*/*",
      "Connection": "keep-alive",
      "Host": "localhost:5298",
      "User-Agent": "PostmanRuntime/7.29.0",
      "Accept-Encoding": "gzip, deflate, br",
      "Content-Type": "application/json",
      "Content-Length": "63",
      "Postman-Token": "2f3286e9-46ef-4ca8-bb68-68e9a99d9cbd"
    },
    "body": {
      "$id": "5",
      "$type": "System.Dynamic.ExpandoObject, System.Linq.Expressions",
      "Name": "张三",
      "Height": 1.75,
      "Weight": 75
    },
    "rawBody": "{\r\n    \"Name\":\"张三\",\r\n    \"Height\":1.75,\r\n    \"Weight\":75\r\n}"
  }
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '6a15c5c215f1492e9e1378351b2b8a8c',
                                            NULL,
                                            '7496cfd047344a359644d44ed80284fe',
                                            '08ace775-b5e5-48ab-b937-da2caa026448',
                                            'SetVariable',
                                            '2022-06-07 01:04:54.4991888',
                                            'Executing',
                                            NULL,
                                            NULL,
                                            NULL
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '78d88fcc43614a58874ce53bd37778f8',
                                            NULL,
                                            '7496cfd047344a359644d44ed80284fe',
                                            '80987150-1b9c-4879-8d33-6f16f78332f8',
                                            'RunJavaScript',
                                            '2022-06-07 01:04:54.5002899',
                                            'Executing',
                                            NULL,
                                            NULL,
                                            NULL
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '8848bdb417b24563a78566b10f2fcc4a',
                                            NULL,
                                            '7496cfd047344a359644d44ed80284fe',
                                            '08ace775-b5e5-48ab-b937-da2caa026448',
                                            'SetVariable',
                                            '2022-06-07 01:04:54.4993274',
                                            'Executed',
                                            NULL,
                                            NULL,
                                            '{
  "Outcomes": [
    "Done"
  ]
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            'd014214b93c941cbab515d3b4618a0d4',
                                            NULL,
                                            '7496cfd047344a359644d44ed80284fe',
                                            '80987150-1b9c-4879-8d33-6f16f78332f8',
                                            'RunJavaScript',
                                            '2022-06-07 01:04:54.758789',
                                            'Faulted',
                                            'Variables is not defined',
                                            NULL,
                                            '{
  "Exception": {
    "Type": "Jint.Runtime.JavaScriptException",
    "Message": "Variables is not defined",
    "StackTrace": "   at <anonymous>:1:1",
    "InnerException": null,
    "Data": {}
  }
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '07067734875141d0a04d8d4ca2b2243a',
                                            NULL,
                                            '4ff5c047936f40418948583e189dd132',
                                            '80987150-1b9c-4879-8d33-6f16f78332f8',
                                            'RunJavaScript',
                                            '2022-06-07 01:05:28.5164614',
                                            'Executing',
                                            NULL,
                                            NULL,
                                            NULL
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '37ef15888c664e62958a0edc0449bfde',
                                            NULL,
                                            '4ff5c047936f40418948583e189dd132',
                                            '68d13fe1-40cf-4737-8803-f5400478509a',
                                            'HttpEndpoint',
                                            '2022-06-07 01:05:28.5157816',
                                            'Executed',
                                            NULL,
                                            NULL,
                                            '{
  "Outcomes": [
    "Done"
  ],
  "Inbound Request": {
    "$id": "1",
    "path": "/bmi",
    "method": "POST",
    "queryString": {
      "$id": "2"
    },
    "routeValues": {
      "$id": "3",
      "$type": "Microsoft.AspNetCore.Routing.RouteValueDictionary, Microsoft.AspNetCore.Http.Abstractions"
    },
    "headers": {
      "$id": "4",
      "Accept": "*/*",
      "Connection": "keep-alive",
      "Host": "localhost:5298",
      "User-Agent": "PostmanRuntime/7.29.0",
      "Accept-Encoding": "gzip, deflate, br",
      "Content-Type": "application/json",
      "Content-Length": "63",
      "Postman-Token": "0649f558-df88-4afa-b24e-dda58a80892c"
    },
    "body": {
      "$id": "5",
      "$type": "System.Dynamic.ExpandoObject, System.Linq.Expressions",
      "Name": "张三",
      "Height": 1.75,
      "Weight": 75
    },
    "rawBody": "{\r\n    \"Name\":\"张三\",\r\n    \"Height\":1.75,\r\n    \"Weight\":75\r\n}"
  }
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '4bc4287df505494a874083d700732b71',
                                            NULL,
                                            '4ff5c047936f40418948583e189dd132',
                                            '08ace775-b5e5-48ab-b937-da2caa026448',
                                            'SetVariable',
                                            '2022-06-07 01:05:28.5161728',
                                            'Executing',
                                            NULL,
                                            NULL,
                                            NULL
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '583fd7903a84444eaad089820600d353',
                                            NULL,
                                            '4ff5c047936f40418948583e189dd132',
                                            '08ace775-b5e5-48ab-b937-da2caa026448',
                                            'SetVariable',
                                            '2022-06-07 01:05:28.5163149',
                                            'Executed',
                                            NULL,
                                            NULL,
                                            '{
  "Outcomes": [
    "Done"
  ]
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '995410c4344f4ea3a18b2caa1587d396',
                                            NULL,
                                            '4ff5c047936f40418948583e189dd132',
                                            '80987150-1b9c-4879-8d33-6f16f78332f8',
                                            'RunJavaScript',
                                            '2022-06-07 01:05:28.8363285',
                                            'Faulted',
                                            'Invalid cast from ''System.Double'' to ''Newtonsoft.Json.Linq.JToken''.',
                                            NULL,
                                            '{
  "Exception": {
    "Type": "System.InvalidCastException",
    "Message": "Invalid cast from ''System.Double'' to ''Newtonsoft.Json.Linq.JToken''.",
    "StackTrace": "   at System.Convert.DefaultToType(IConvertible value, Type targetType, IFormatProvider provider)\r\n   at System.Double.System.IConvertible.ToType(Type type, IFormatProvider provider)\r\n   at Jint.Runtime.Interop.DefaultTypeConverter.Convert(Object value, Type type, IFormatProvider formatProvider)\r\n   at Jint.Runtime.Interop.Reflection.ReflectionAccessor.ConvertValueToSet(Engine engine, Object value)\r\n   at Jint.Runtime.Interop.Reflection.ReflectionAccessor.SetValue(Engine engine, Object target, JsValue value)\r\n   at Jint.Runtime.Interop.ObjectWrapper.Set(JsValue property, JsValue value, JsValue receiver)\r\n   at Jint.Engine.PutValue(Reference reference, JsValue value)\r\n   at Jint.Runtime.Interpreter.Expressions.JintAssignmentExpression.SimpleAssignmentExpression.SetValue(EvaluationContext context)\r\n   at Jint.Runtime.Interpreter.Expressions.JintAssignmentExpression.SimpleAssignmentExpression.EvaluateInternal(EvaluationContext context)\r\n   at Jint.Runtime.Interpreter.Statements.JintExpressionStatement.ExecuteInternal(EvaluationContext context)\r\n   at Jint.Runtime.Interpreter.JintStatementList.Execute(EvaluationContext context)\r\n   at Jint.Engine.<>c__DisplayClass65_0.<Execute>g__DoInvoke|0()\r\n   at Jint.Engine.ExecuteWithConstraints[T](Func`1 callback)\r\n   at Jint.Engine.Execute(Script script)\r\n   at Jint.Engine.Execute(String source, ParserOptions parserOptions)\r\n   at Jint.Engine.Evaluate(String source)\r\n   at Elsa.Scripting.JavaScript.Services.JintJavaScriptEvaluator.ExecuteExpressionAndGetResult(Engine engine, String expression)\r\n   at Elsa.Scripting.JavaScript.Services.JintJavaScriptEvaluator.EvaluateAsync(String expression, Type returnType, ActivityExecutionContext context, Action`1 configureEngine, CancellationToken cancellationToken)\r\n   at Elsa.Activities.JavaScript.RunJavaScript.OnExecuteAsync(ActivityExecutionContext context)\r\n   at Elsa.Services.Workflows.WorkflowRunner.TryExecuteActivityAsync(ActivityOperation activityOperation, ActivityExecutionContext activityExecutionContext, IActivity activity, CancellationToken cancellationToken)",
    "InnerException": null,
    "Data": {}
  }
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            'd0ca2141a28c4bcdb158da8070336a98',
                                            NULL,
                                            '4ff5c047936f40418948583e189dd132',
                                            '68d13fe1-40cf-4737-8803-f5400478509a',
                                            'HttpEndpoint',
                                            '2022-06-07 01:05:28.5155342',
                                            'Executing',
                                            NULL,
                                            NULL,
                                            NULL
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            'feb59cc9540f4ea98a119fb04a8367e0',
                                            NULL,
                                            '4ff5c047936f40418948583e189dd132',
                                            '80987150-1b9c-4879-8d33-6f16f78332f8',
                                            'RunJavaScript',
                                            '2022-06-07 01:05:28.836704',
                                            'Executed',
                                            NULL,
                                            NULL,
                                            '{
  "Outcomes": []
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '027c13d3ad6e4623b5fcedd2d53619b0',
                                            NULL,
                                            '1c21b48113524f3188cedaedcb35cb0d',
                                            '80987150-1b9c-4879-8d33-6f16f78332f8',
                                            'RunJavaScript',
                                            '2022-06-07 01:06:39.7596477',
                                            'Faulted',
                                            'Invalid cast from ''System.Double'' to ''Newtonsoft.Json.Linq.JToken''.',
                                            NULL,
                                            '{
  "Exception": {
    "Type": "System.InvalidCastException",
    "Message": "Invalid cast from ''System.Double'' to ''Newtonsoft.Json.Linq.JToken''.",
    "StackTrace": "   at System.Convert.DefaultToType(IConvertible value, Type targetType, IFormatProvider provider)\r\n   at System.Double.System.IConvertible.ToType(Type type, IFormatProvider provider)\r\n   at Jint.Runtime.Interop.DefaultTypeConverter.Convert(Object value, Type type, IFormatProvider formatProvider)\r\n   at Jint.Runtime.Interop.Reflection.ReflectionAccessor.ConvertValueToSet(Engine engine, Object value)\r\n   at Jint.Runtime.Interop.Reflection.ReflectionAccessor.SetValue(Engine engine, Object target, JsValue value)\r\n   at Jint.Runtime.Interop.ObjectWrapper.Set(JsValue property, JsValue value, JsValue receiver)\r\n   at Jint.Engine.PutValue(Reference reference, JsValue value)\r\n   at Jint.Runtime.Interpreter.Expressions.JintAssignmentExpression.SimpleAssignmentExpression.SetValue(EvaluationContext context)\r\n   at Jint.Runtime.Interpreter.Expressions.JintAssignmentExpression.SimpleAssignmentExpression.EvaluateInternal(EvaluationContext context)\r\n   at Jint.Runtime.Interpreter.Statements.JintExpressionStatement.ExecuteInternal(EvaluationContext context)\r\n   at Jint.Runtime.Interpreter.JintStatementList.Execute(EvaluationContext context)\r\n   at Jint.Engine.<>c__DisplayClass65_0.<Execute>g__DoInvoke|0()\r\n   at Jint.Engine.ExecuteWithConstraints[T](Func`1 callback)\r\n   at Jint.Engine.Execute(Script script)\r\n   at Jint.Engine.Execute(String source, ParserOptions parserOptions)\r\n   at Jint.Engine.Evaluate(String source)\r\n   at Elsa.Scripting.JavaScript.Services.JintJavaScriptEvaluator.ExecuteExpressionAndGetResult(Engine engine, String expression)\r\n   at Elsa.Scripting.JavaScript.Services.JintJavaScriptEvaluator.EvaluateAsync(String expression, Type returnType, ActivityExecutionContext context, Action`1 configureEngine, CancellationToken cancellationToken)\r\n   at Elsa.Activities.JavaScript.RunJavaScript.OnExecuteAsync(ActivityExecutionContext context)\r\n   at Elsa.Services.Workflows.WorkflowRunner.TryExecuteActivityAsync(ActivityOperation activityOperation, ActivityExecutionContext activityExecutionContext, IActivity activity, CancellationToken cancellationToken)",
    "InnerException": null,
    "Data": {}
  }
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '71b36cede6c3421dbe21884931a1628c',
                                            NULL,
                                            '1c21b48113524f3188cedaedcb35cb0d',
                                            '68d13fe1-40cf-4737-8803-f5400478509a',
                                            'HttpEndpoint',
                                            '2022-06-07 01:06:39.5940486',
                                            'Executed',
                                            NULL,
                                            NULL,
                                            '{
  "Outcomes": [
    "Done"
  ],
  "Inbound Request": {
    "$id": "1",
    "path": "/bmi",
    "method": "POST",
    "queryString": {
      "$id": "2"
    },
    "routeValues": {
      "$id": "3",
      "$type": "Microsoft.AspNetCore.Routing.RouteValueDictionary, Microsoft.AspNetCore.Http.Abstractions"
    },
    "headers": {
      "$id": "4",
      "Accept": "*/*",
      "Connection": "keep-alive",
      "Host": "localhost:5298",
      "User-Agent": "PostmanRuntime/7.29.0",
      "Accept-Encoding": "gzip, deflate, br",
      "Content-Type": "application/json",
      "Content-Length": "77",
      "Postman-Token": "532fe72f-4063-4f78-84f8-06ceed05d4fa"
    },
    "body": {
      "$id": "5",
      "$type": "System.Dynamic.ExpandoObject, System.Linq.Expressions",
      "Name": "张三",
      "Height": 1.75,
      "Weight": 75,
      "bmi": 0
    },
    "rawBody": "{\r\n    \"Name\":\"张三\",\r\n    \"Height\":1.75,\r\n    \"Weight\":75,\r\n    \"bmi\":0\r\n}"
  }
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '815d1ee353784621af57eb29edb30c68',
                                            NULL,
                                            '1c21b48113524f3188cedaedcb35cb0d',
                                            '68d13fe1-40cf-4737-8803-f5400478509a',
                                            'HttpEndpoint',
                                            '2022-06-07 01:06:39.5934614',
                                            'Executing',
                                            NULL,
                                            NULL,
                                            NULL
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '99a63ea8c3e642c999242f1db135f119',
                                            NULL,
                                            '1c21b48113524f3188cedaedcb35cb0d',
                                            '08ace775-b5e5-48ab-b937-da2caa026448',
                                            'SetVariable',
                                            '2022-06-07 01:06:39.5950203',
                                            'Executed',
                                            NULL,
                                            NULL,
                                            '{
  "Outcomes": [
    "Done"
  ]
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            'b6be1d8edd9146918486767a3250fd3a',
                                            NULL,
                                            '1c21b48113524f3188cedaedcb35cb0d',
                                            '80987150-1b9c-4879-8d33-6f16f78332f8',
                                            'RunJavaScript',
                                            '2022-06-07 01:06:39.7603337',
                                            'Executed',
                                            NULL,
                                            NULL,
                                            '{
  "Outcomes": []
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            'c1263479e9d941d19eb08d6701318215',
                                            NULL,
                                            '1c21b48113524f3188cedaedcb35cb0d',
                                            '08ace775-b5e5-48ab-b937-da2caa026448',
                                            'SetVariable',
                                            '2022-06-07 01:06:39.5947718',
                                            'Executing',
                                            NULL,
                                            NULL,
                                            NULL
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            'ecb5d0407d3d443ea7fc00bbb5fe1f51',
                                            NULL,
                                            '1c21b48113524f3188cedaedcb35cb0d',
                                            '80987150-1b9c-4879-8d33-6f16f78332f8',
                                            'RunJavaScript',
                                            '2022-06-07 01:06:39.5953912',
                                            'Executing',
                                            NULL,
                                            NULL,
                                            NULL
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '0190103fa02840b3a00e0d785cce4b0d',
                                            NULL,
                                            '41adeaee3b2a46db9e6a337dfdfa41e2',
                                            '80987150-1b9c-4879-8d33-6f16f78332f8',
                                            'RunJavaScript',
                                            '2022-06-07 01:06:54.9279376',
                                            'Executing',
                                            NULL,
                                            NULL,
                                            NULL
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '09ac6133fe554bdc9bdcb3922f7221ee',
                                            NULL,
                                            '41adeaee3b2a46db9e6a337dfdfa41e2',
                                            '68d13fe1-40cf-4737-8803-f5400478509a',
                                            'HttpEndpoint',
                                            '2022-06-07 01:06:54.9270305',
                                            'Executing',
                                            NULL,
                                            NULL,
                                            NULL
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '138eea5fa9c24a1ab4219e466a49ba7f',
                                            NULL,
                                            '41adeaee3b2a46db9e6a337dfdfa41e2',
                                            '08ace775-b5e5-48ab-b937-da2caa026448',
                                            'SetVariable',
                                            '2022-06-07 01:06:54.927748',
                                            'Executed',
                                            NULL,
                                            NULL,
                                            '{
  "Outcomes": [
    "Done"
  ]
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '145e0d6eac454156aa75ce381b7775fa',
                                            NULL,
                                            '41adeaee3b2a46db9e6a337dfdfa41e2',
                                            '80987150-1b9c-4879-8d33-6f16f78332f8',
                                            'RunJavaScript',
                                            '2022-06-07 01:06:55.0846347',
                                            'Executed',
                                            NULL,
                                            NULL,
                                            '{
  "Outcomes": []
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '49dda9cd0e6c426bba6eac0167e5ddf2',
                                            NULL,
                                            '41adeaee3b2a46db9e6a337dfdfa41e2',
                                            '80987150-1b9c-4879-8d33-6f16f78332f8',
                                            'RunJavaScript',
                                            '2022-06-07 01:06:55.0837358',
                                            'Faulted',
                                            'Invalid cast from ''System.Double'' to ''Newtonsoft.Json.Linq.JToken''.',
                                            NULL,
                                            '{
  "Exception": {
    "Type": "System.InvalidCastException",
    "Message": "Invalid cast from ''System.Double'' to ''Newtonsoft.Json.Linq.JToken''.",
    "StackTrace": "   at System.Convert.DefaultToType(IConvertible value, Type targetType, IFormatProvider provider)\r\n   at System.Double.System.IConvertible.ToType(Type type, IFormatProvider provider)\r\n   at Jint.Runtime.Interop.DefaultTypeConverter.Convert(Object value, Type type, IFormatProvider formatProvider)\r\n   at Jint.Runtime.Interop.Reflection.ReflectionAccessor.ConvertValueToSet(Engine engine, Object value)\r\n   at Jint.Runtime.Interop.Reflection.ReflectionAccessor.SetValue(Engine engine, Object target, JsValue value)\r\n   at Jint.Runtime.Interop.ObjectWrapper.Set(JsValue property, JsValue value, JsValue receiver)\r\n   at Jint.Engine.PutValue(Reference reference, JsValue value)\r\n   at Jint.Runtime.Interpreter.Expressions.JintAssignmentExpression.SimpleAssignmentExpression.SetValue(EvaluationContext context)\r\n   at Jint.Runtime.Interpreter.Expressions.JintAssignmentExpression.SimpleAssignmentExpression.EvaluateInternal(EvaluationContext context)\r\n   at Jint.Runtime.Interpreter.Statements.JintExpressionStatement.ExecuteInternal(EvaluationContext context)\r\n   at Jint.Runtime.Interpreter.JintStatementList.Execute(EvaluationContext context)\r\n   at Jint.Engine.<>c__DisplayClass65_0.<Execute>g__DoInvoke|0()\r\n   at Jint.Engine.ExecuteWithConstraints[T](Func`1 callback)\r\n   at Jint.Engine.Execute(Script script)\r\n   at Jint.Engine.Execute(String source, ParserOptions parserOptions)\r\n   at Jint.Engine.Evaluate(String source)\r\n   at Elsa.Scripting.JavaScript.Services.JintJavaScriptEvaluator.ExecuteExpressionAndGetResult(Engine engine, String expression)\r\n   at Elsa.Scripting.JavaScript.Services.JintJavaScriptEvaluator.EvaluateAsync(String expression, Type returnType, ActivityExecutionContext context, Action`1 configureEngine, CancellationToken cancellationToken)\r\n   at Elsa.Activities.JavaScript.RunJavaScript.OnExecuteAsync(ActivityExecutionContext context)\r\n   at Elsa.Services.Workflows.WorkflowRunner.TryExecuteActivityAsync(ActivityOperation activityOperation, ActivityExecutionContext activityExecutionContext, IActivity activity, CancellationToken cancellationToken)",
    "InnerException": null,
    "Data": {}
  }
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            'a7ed9239665349ac80b549d47725c252',
                                            NULL,
                                            '41adeaee3b2a46db9e6a337dfdfa41e2',
                                            '08ace775-b5e5-48ab-b937-da2caa026448',
                                            'SetVariable',
                                            '2022-06-07 01:06:54.9276401',
                                            'Executing',
                                            NULL,
                                            NULL,
                                            NULL
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            'fa7e53c868a14a2f984761279a9a5f70',
                                            NULL,
                                            '41adeaee3b2a46db9e6a337dfdfa41e2',
                                            '68d13fe1-40cf-4737-8803-f5400478509a',
                                            'HttpEndpoint',
                                            '2022-06-07 01:06:54.9272797',
                                            'Executed',
                                            NULL,
                                            NULL,
                                            '{
  "Outcomes": [
    "Done"
  ],
  "Inbound Request": {
    "$id": "1",
    "path": "/bmi",
    "method": "POST",
    "queryString": {
      "$id": "2"
    },
    "routeValues": {
      "$id": "3",
      "$type": "Microsoft.AspNetCore.Routing.RouteValueDictionary, Microsoft.AspNetCore.Http.Abstractions"
    },
    "headers": {
      "$id": "4",
      "Accept": "*/*",
      "Connection": "keep-alive",
      "Host": "localhost:5298",
      "User-Agent": "PostmanRuntime/7.29.0",
      "Accept-Encoding": "gzip, deflate, br",
      "Content-Type": "application/json",
      "Content-Length": "77",
      "Postman-Token": "bd3cd039-e197-4c7c-96ac-d5d72d157fac"
    },
    "body": {
      "$id": "5",
      "$type": "System.Dynamic.ExpandoObject, System.Linq.Expressions",
      "Name": "张三",
      "Height": 1.75,
      "Weight": 75,
      "bmi": 0
    },
    "rawBody": "{\r\n    \"Name\":\"张三\",\r\n    \"Height\":1.75,\r\n    \"Weight\":75,\r\n    \"bmi\":0\r\n}"
  }
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '071aab68c2124db38e8d7fca6d7a188d',
                                            NULL,
                                            '0ce9fac2dc3a475bb284c6daf141e9ec',
                                            '08ace775-b5e5-48ab-b937-da2caa026448',
                                            'SetVariable',
                                            '2022-06-07 01:09:52.8821415',
                                            'Executing',
                                            NULL,
                                            NULL,
                                            NULL
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '0a81ee801f514cf2bce8997258202a18',
                                            NULL,
                                            '0ce9fac2dc3a475bb284c6daf141e9ec',
                                            'cf812a65-140d-47a1-8c08-3bf8706106b0',
                                            'WriteHttpResponse',
                                            '2022-06-07 01:09:52.9015417',
                                            'Executed',
                                            NULL,
                                            NULL,
                                            '{
  "Outcomes": [
    "Done"
  ]
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '118279b63fa44e6a9b4908146c6697cd',
                                            NULL,
                                            '0ce9fac2dc3a475bb284c6daf141e9ec',
                                            '08ace775-b5e5-48ab-b937-da2caa026448',
                                            'SetVariable',
                                            '2022-06-07 01:09:52.8822825',
                                            'Executed',
                                            NULL,
                                            NULL,
                                            '{
  "Outcomes": [
    "Done"
  ]
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '3829d110446647b2b030244801c35122',
                                            NULL,
                                            '0ce9fac2dc3a475bb284c6daf141e9ec',
                                            'cf812a65-140d-47a1-8c08-3bf8706106b0',
                                            'WriteHttpResponse',
                                            '2022-06-07 01:09:52.9011247',
                                            'Executing',
                                            NULL,
                                            NULL,
                                            NULL
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '4096a33723b54a54ad937dc34ccbbf2d',
                                            NULL,
                                            '0ce9fac2dc3a475bb284c6daf141e9ec',
                                            '68d13fe1-40cf-4737-8803-f5400478509a',
                                            'HttpEndpoint',
                                            '2022-06-07 01:09:52.8811898',
                                            'Executing',
                                            NULL,
                                            NULL,
                                            NULL
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '908b5c2baf584b05922a39cf7f21c7e5',
                                            NULL,
                                            '0ce9fac2dc3a475bb284c6daf141e9ec',
                                            '68d13fe1-40cf-4737-8803-f5400478509a',
                                            'HttpEndpoint',
                                            '2022-06-07 01:09:52.8815786',
                                            'Executed',
                                            NULL,
                                            NULL,
                                            '{
  "Outcomes": [
    "Done"
  ],
  "Inbound Request": {
    "$id": "1",
    "path": "/bmi",
    "method": "POST",
    "queryString": {
      "$id": "2"
    },
    "routeValues": {
      "$id": "3",
      "$type": "Microsoft.AspNetCore.Routing.RouteValueDictionary, Microsoft.AspNetCore.Http.Abstractions"
    },
    "headers": {
      "$id": "4",
      "Accept": "*/*",
      "Connection": "keep-alive",
      "Host": "localhost:5298",
      "User-Agent": "PostmanRuntime/7.29.0",
      "Accept-Encoding": "gzip, deflate, br",
      "Content-Type": "application/json",
      "Content-Length": "77",
      "Postman-Token": "f9daa29c-1d97-4d7f-9fde-f5538f2ce63c"
    },
    "body": {
      "$id": "5",
      "$type": "System.Dynamic.ExpandoObject, System.Linq.Expressions",
      "Name": "张三",
      "Height": 1.75,
      "Weight": 75,
      "bmi": 0
    },
    "rawBody": "{\r\n    \"Name\":\"张三\",\r\n    \"Height\":1.75,\r\n    \"Weight\":75,\r\n    \"bmi\":0\r\n}"
  }
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            'bf4023f88bd24c34aee981ab19243459',
                                            NULL,
                                            '0ce9fac2dc3a475bb284c6daf141e9ec',
                                            '80987150-1b9c-4879-8d33-6f16f78332f8',
                                            'RunJavaScript',
                                            '2022-06-07 01:09:52.8997805',
                                            'Executed',
                                            NULL,
                                            NULL,
                                            '{
  "Outcomes": [
    "Done"
  ]
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            'db15a468717440718ac7b5b486041f6a',
                                            NULL,
                                            '0ce9fac2dc3a475bb284c6daf141e9ec',
                                            '80987150-1b9c-4879-8d33-6f16f78332f8',
                                            'RunJavaScript',
                                            '2022-06-07 01:09:52.8826545',
                                            'Executing',
                                            NULL,
                                            NULL,
                                            NULL
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '0f8ae451e7b34369b347233bdede0224',
                                            NULL,
                                            'ee3427cb82b34225b0de142e9681252c',
                                            '80987150-1b9c-4879-8d33-6f16f78332f8',
                                            'RunJavaScript',
                                            '2022-06-07 01:10:03.0373797',
                                            'Executing',
                                            NULL,
                                            NULL,
                                            NULL
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '10f51405937a465eaacbef2e91f98ee7',
                                            NULL,
                                            'ee3427cb82b34225b0de142e9681252c',
                                            '68d13fe1-40cf-4737-8803-f5400478509a',
                                            'HttpEndpoint',
                                            '2022-06-07 01:10:03.0357344',
                                            'Executing',
                                            NULL,
                                            NULL,
                                            NULL
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '2298d63e0c304ced8bd7ccdeb5bb2bb8',
                                            NULL,
                                            'ee3427cb82b34225b0de142e9681252c',
                                            '68d13fe1-40cf-4737-8803-f5400478509a',
                                            'HttpEndpoint',
                                            '2022-06-07 01:10:03.0361296',
                                            'Executed',
                                            NULL,
                                            NULL,
                                            '{
  "Outcomes": [
    "Done"
  ],
  "Inbound Request": {
    "$id": "1",
    "path": "/bmi",
    "method": "POST",
    "queryString": {
      "$id": "2"
    },
    "routeValues": {
      "$id": "3",
      "$type": "Microsoft.AspNetCore.Routing.RouteValueDictionary, Microsoft.AspNetCore.Http.Abstractions"
    },
    "headers": {
      "$id": "4",
      "Accept": "*/*",
      "Connection": "keep-alive",
      "Host": "localhost:5298",
      "User-Agent": "PostmanRuntime/7.29.0",
      "Accept-Encoding": "gzip, deflate, br",
      "Content-Type": "application/json",
      "Content-Length": "63",
      "Postman-Token": "3c5eae94-169d-4b18-b48f-f3988ac530a8"
    },
    "body": {
      "$id": "5",
      "$type": "System.Dynamic.ExpandoObject, System.Linq.Expressions",
      "Name": "张三",
      "Height": 1.75,
      "Weight": 75
    },
    "rawBody": "{\r\n    \"Name\":\"张三\",\r\n    \"Height\":1.75,\r\n    \"Weight\":75\r\n}"
  }
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '410496e61feb43fca7374d2f53031f9d',
                                            NULL,
                                            'ee3427cb82b34225b0de142e9681252c',
                                            '08ace775-b5e5-48ab-b937-da2caa026448',
                                            'SetVariable',
                                            '2022-06-07 01:10:03.0369396',
                                            'Executing',
                                            NULL,
                                            NULL,
                                            NULL
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '5f660de57a2f40f488cdb20d131c3a7d',
                                            NULL,
                                            'ee3427cb82b34225b0de142e9681252c',
                                            'cf812a65-140d-47a1-8c08-3bf8706106b0',
                                            'WriteHttpResponse',
                                            '2022-06-07 01:10:03.0395415',
                                            'Executed',
                                            NULL,
                                            NULL,
                                            '{
  "Outcomes": [
    "Done"
  ]
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '7d7633d4bd134ee9b19c82f6c46dbe66',
                                            NULL,
                                            'ee3427cb82b34225b0de142e9681252c',
                                            '08ace775-b5e5-48ab-b937-da2caa026448',
                                            'SetVariable',
                                            '2022-06-07 01:10:03.0371091',
                                            'Executed',
                                            NULL,
                                            NULL,
                                            '{
  "Outcomes": [
    "Done"
  ]
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '824a96b4fd2c41339ad46bdc47033dea',
                                            NULL,
                                            'ee3427cb82b34225b0de142e9681252c',
                                            '80987150-1b9c-4879-8d33-6f16f78332f8',
                                            'RunJavaScript',
                                            '2022-06-07 01:10:03.0380829',
                                            'Executed',
                                            NULL,
                                            NULL,
                                            '{
  "Outcomes": [
    "Done"
  ]
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            'b4c6fb9138b84404af6cd28ccfe57f40',
                                            NULL,
                                            'ee3427cb82b34225b0de142e9681252c',
                                            'cf812a65-140d-47a1-8c08-3bf8706106b0',
                                            'WriteHttpResponse',
                                            '2022-06-07 01:10:03.0391683',
                                            'Executing',
                                            NULL,
                                            NULL,
                                            NULL
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '009cd1f2f41648218070c3815364bb08',
                                            NULL,
                                            '33046df735b2447da983e6f19a5117ae',
                                            '10dee174-36ce-45b5-a99b-2112c160cc8c',
                                            'SignalReceived',
                                            '2022-06-07 06:51:48.4068506',
                                            'Executed',
                                            NULL,
                                            NULL,
                                            '{
  "Outcomes": []
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '10d3cfbdd08244d59b8b8e68f8c7fd1d',
                                            NULL,
                                            '33046df735b2447da983e6f19a5117ae',
                                            'a88a6e9c-42b6-4709-b6c7-24c947d0a05e',
                                            'SetVariable',
                                            '2022-06-07 06:51:48.401384',
                                            'Executing',
                                            NULL,
                                            NULL,
                                            NULL
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '12ea4958635845c292419ddc1f5cd79a',
                                            NULL,
                                            '33046df735b2447da983e6f19a5117ae',
                                            '55da7374-13ea-49e2-8099-9e7e2513e8a2',
                                            'HttpEndpoint',
                                            '2022-06-07 06:51:48.4006365',
                                            'Executed',
                                            NULL,
                                            NULL,
                                            '{
  "Outcomes": [
    "Done"
  ],
  "Inbound Request": {
    "$id": "1",
    "path": "/LeaveApprove",
    "method": "POST",
    "queryString": {
      "$id": "2"
    },
    "routeValues": {
      "$id": "3",
      "$type": "Microsoft.AspNetCore.Routing.RouteValueDictionary, Microsoft.AspNetCore.Http.Abstractions"
    },
    "headers": {
      "$id": "4",
      "Accept": "*/*",
      "Connection": "keep-alive",
      "Host": "localhost:5298",
      "User-Agent": "PostmanRuntime/7.29.0",
      "Accept-Encoding": "gzip, deflate, br",
      "Content-Type": "text/plain",
      "Content-Length": "66",
      "Postman-Token": "2a60e0a2-c2b8-441b-a1c4-ff24427a56c2"
    },
    "body": "{\r\n    \"Name\":\"张三\",\r\n    \"Days\":3,\r\n    \"Reason\":\"休息\"\r\n}\r\n",
    "rawBody": "{\r\n    \"Name\":\"张三\",\r\n    \"Days\":3,\r\n    \"Reason\":\"休息\"\r\n}\r\n"
  }
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '14b7e12136774febb5c3326874ac285b',
                                            NULL,
                                            '33046df735b2447da983e6f19a5117ae',
                                            'dac9fadd-0ed9-49a3-962e-f96939f7ba6e',
                                            'Fork',
                                            '2022-06-07 06:51:48.4026354',
                                            'Executing',
                                            NULL,
                                            NULL,
                                            NULL
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '45fe923cf1934f718f6ad9396b5ebfb8',
                                            NULL,
                                            '33046df735b2447da983e6f19a5117ae',
                                            'dac9fadd-0ed9-49a3-962e-f96939f7ba6e',
                                            'Fork',
                                            '2022-06-07 06:51:48.4029511',
                                            'Executed',
                                            NULL,
                                            NULL,
                                            '{
  "Outcomes": [
    "reject",
    "approve"
  ]
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '85af720c0e794c259555d0caadafe24d',
                                            NULL,
                                            '33046df735b2447da983e6f19a5117ae',
                                            '55da7374-13ea-49e2-8099-9e7e2513e8a2',
                                            'HttpEndpoint',
                                            '2022-06-07 06:51:48.4002347',
                                            'Executing',
                                            NULL,
                                            NULL,
                                            NULL
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '998ca90fcefd485bb7a5c63620ffabc0',
                                            NULL,
                                            '33046df735b2447da983e6f19a5117ae',
                                            '32d7eef9-1b28-4881-a3aa-923106f91291',
                                            'SignalReceived',
                                            '2022-06-07 06:51:48.403512',
                                            'Executing',
                                            NULL,
                                            NULL,
                                            NULL
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            'd4ef50f2aa1f42bcbfbac926ff94d1ae',
                                            NULL,
                                            '33046df735b2447da983e6f19a5117ae',
                                            '32d7eef9-1b28-4881-a3aa-923106f91291',
                                            'SignalReceived',
                                            '2022-06-07 06:51:48.4063181',
                                            'Executed',
                                            NULL,
                                            NULL,
                                            '{
  "Outcomes": []
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            'd5b267a284e54daca08f7c32c7682101',
                                            NULL,
                                            '33046df735b2447da983e6f19a5117ae',
                                            'a88a6e9c-42b6-4709-b6c7-24c947d0a05e',
                                            'SetVariable',
                                            '2022-06-07 06:51:48.4015047',
                                            'Executed',
                                            NULL,
                                            NULL,
                                            '{
  "Outcomes": [
    "Done"
  ]
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            'dae44a224ac0456c86b13f91dd68fa3d',
                                            NULL,
                                            '33046df735b2447da983e6f19a5117ae',
                                            '10dee174-36ce-45b5-a99b-2112c160cc8c',
                                            'SignalReceived',
                                            '2022-06-07 06:51:48.4067105',
                                            'Executing',
                                            NULL,
                                            NULL,
                                            NULL
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '47f0261869564f569f4dc2b2d0747556',
                                            NULL,
                                            'b2b27f95c9ab4441adcc6355310e8b26',
                                            '55da7374-13ea-49e2-8099-9e7e2513e8a2',
                                            'HttpEndpoint',
                                            '2022-06-07 07:29:22.2635903',
                                            'Executed',
                                            NULL,
                                            NULL,
                                            '{
  "Outcomes": [
    "Done"
  ],
  "Inbound Request": {
    "$id": "1",
    "path": "/LeaveApprove",
    "method": "POST",
    "queryString": {
      "$id": "2"
    },
    "routeValues": {
      "$id": "3",
      "$type": "Microsoft.AspNetCore.Routing.RouteValueDictionary, Microsoft.AspNetCore.Http.Abstractions"
    },
    "headers": {
      "$id": "4",
      "Accept": "*/*",
      "Connection": "keep-alive",
      "Host": "localhost:5298",
      "User-Agent": "PostmanRuntime/7.29.0",
      "Accept-Encoding": "gzip, deflate, br",
      "Content-Type": "text/plain",
      "Content-Length": "66",
      "Postman-Token": "12b6ea31-0189-446f-abc7-2b1ba6a65181"
    },
    "body": "{\r\n    \"Name\":\"张三\",\r\n    \"Days\":3,\r\n    \"Reason\":\"休息\"\r\n}\r\n",
    "rawBody": "{\r\n    \"Name\":\"张三\",\r\n    \"Days\":3,\r\n    \"Reason\":\"休息\"\r\n}\r\n"
  }
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '602c4edbcc4048818db328c1d58f2d08',
                                            NULL,
                                            'b2b27f95c9ab4441adcc6355310e8b26',
                                            'a88a6e9c-42b6-4709-b6c7-24c947d0a05e',
                                            'SetVariable',
                                            '2022-06-07 07:29:22.2641629',
                                            'Executed',
                                            NULL,
                                            NULL,
                                            '{
  "Outcomes": [
    "Done"
  ]
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '81322ee5c2494f3ca24fbb84d946852e',
                                            NULL,
                                            'b2b27f95c9ab4441adcc6355310e8b26',
                                            '55da7374-13ea-49e2-8099-9e7e2513e8a2',
                                            'HttpEndpoint',
                                            '2022-06-07 07:29:22.8725831',
                                            'Faulted',
                                            NULL,
                                            NULL,
                                            '{
  "Type": "Elsa.Exceptions.CannotSetActivityPropertyValueException",
  "Message": "An exception was thrown whilst setting ''WriteHttpResponse.Content''. See the inner exception for further details.",
  "StackTrace": "   at Elsa.Services.ActivityPropertyProviders.SetActivityPropertiesAsync(IActivity activity, ActivityExecutionContext activityExecutionContext, CancellationToken cancellationToken)\r\n   at Elsa.Services.Workflows.ActivityActivator.ActivateActivityAsync(ActivityExecutionContext context, Type type, CancellationToken cancellationToken)\r\n   at Elsa.Providers.ActivityTypes.TypeBasedActivityProvider.<>c__DisplayClass6_0.<<CreateActivityTypeAsync>b__0>d.MoveNext()\r\n--- End of stack trace from previous location ---\r\n   at Elsa.Services.Workflows.WorkflowRunner.RunCoreAsync(WorkflowExecutionContext workflowExecutionContext, ActivityOperation activityOperation, CancellationToken cancellationToken)\r\n   at Elsa.Services.Workflows.WorkflowRunner.RunCoreAsync(WorkflowExecutionContext workflowExecutionContext, ActivityOperation activityOperation, CancellationToken cancellationToken)\r\n   at Elsa.Services.Workflows.WorkflowRunner.BeginWorkflow(WorkflowExecutionContext workflowExecutionContext, IActivityBlueprint activity, CancellationToken cancellationToken)",
  "InnerException": {
    "Type": "Elsa.Exceptions.ExpressionEvaluationException",
    "Message": "Failed to evaluate expression",
    "StackTrace": "   at Elsa.Expressions.ExpressionEvaluator.EvaluateAsync(String expression, String syntax, Type returnType, ActivityExecutionContext context, CancellationToken cancellationToken)\r\n   at Elsa.Services.Workflows.ExpressionActivityPropertyValueProvider.GetValueAsync(ActivityExecutionContext context, CancellationToken cancellationToken)\r\n   at Elsa.Services.ActivityPropertyProviders.SetActivityPropertiesAsync(IActivity activity, ActivityExecutionContext activityExecutionContext, CancellationToken cancellationToken)",
    "InnerException": {
      "Type": "System.Exception",
      "Message": "There was no base URL configured, which means no absolute URL can be generated from outside the context of an HTTP request. Please make sure that `HttpActivityOptions` is configured correctly. The configuration key used in most Elsa samples is usually: \"Elsa:Server:BaseUrl\"",
      "StackTrace": "   at Elsa.Activities.Http.Services.DefaultAbsoluteUrlProvider.ToAbsoluteUrl(String relativePath)\r\n   at Elsa.Activities.Http.Extensions.ActivityExecutionContextExtensions.GenerateSignalUrl(ActivityExecutionContext context, String signal)\r\n   at Elsa.Activities.Http.Scripting.Liquid.SignalUrlFilter.ProcessAsync(FluidValue input, FilterArguments arguments, TemplateContext context)\r\n   at Elsa.Scripting.Liquid.Extensions.TemplateContextExtensions.<>c__DisplayClass0_1.<AddFilters>b__0(FluidValue input, FilterArguments arguments, TemplateContext ctx)\r\n   at Fluid.Ast.FilterExpression.EvaluateAsync(TemplateContext context)\r\n   at Fluid.Ast.OutputStatement.<WriteToAsync>g__Awaited|7_0(ValueTask`1 t, TextWriter w, TextEncoder enc, TemplateContext ctx)\r\n   at Fluid.Parser.FluidTemplate.Awaited(ValueTask`1 task, TextWriter writer, TextEncoder encoder, TemplateContext context, IReadOnlyList`1 statements, Int32 startIndex)\r\n   at Fluid.FluidTemplateExtensions.RenderAsync(IFluidTemplate template, TemplateContext context, TextEncoder encoder)\r\n   at Elsa.Scripting.Liquid.Services.LiquidTemplateManager.RenderAsync(String source, TemplateContext context, TextEncoder encoder)\r\n   at Elsa.Scripting.Liquid.Services.LiquidHandler.EvaluateAsync(String expression, Type returnType, ActivityExecutionContext context, CancellationToken cancellationToken)\r\n   at Elsa.Expressions.ExpressionEvaluator.EvaluateAsync(String expression, String syntax, Type returnType, ActivityExecutionContext context, CancellationToken cancellationToken)",
      "InnerException": null,
      "Data": {}
    },
    "Data": {
      "Expression": "approve: {{ \"Approve\" | signal_url }} \r\nreject: {{ \"Reject\" | signal_url }}",
      "Syntax": "Liquid"
    }
  },
  "Data": {}
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '8a088c20aa744100a3b1d1b6dd12cd1c',
                                            NULL,
                                            'b2b27f95c9ab4441adcc6355310e8b26',
                                            '55da7374-13ea-49e2-8099-9e7e2513e8a2',
                                            'HttpEndpoint',
                                            '2022-06-07 07:29:22.2633119',
                                            'Executing',
                                            NULL,
                                            NULL,
                                            NULL
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            'e4879340eb98408cb41cde05e2561458',
                                            NULL,
                                            'b2b27f95c9ab4441adcc6355310e8b26',
                                            'a88a6e9c-42b6-4709-b6c7-24c947d0a05e',
                                            'SetVariable',
                                            '2022-06-07 07:29:22.2640477',
                                            'Executing',
                                            NULL,
                                            NULL,
                                            NULL
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '1825ed6a6e12463e838c4564c407392b',
                                            NULL,
                                            'b17de772b948446698ca8c38fdcba3f4',
                                            '32d7eef9-1b28-4881-a3aa-923106f91291',
                                            'SignalReceived',
                                            '2022-06-07 07:31:10.496716',
                                            'Executing',
                                            NULL,
                                            NULL,
                                            NULL
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '29f97df028ec45a0b413dae97d4d262e',
                                            NULL,
                                            'b17de772b948446698ca8c38fdcba3f4',
                                            '10dee174-36ce-45b5-a99b-2112c160cc8c',
                                            'SignalReceived',
                                            '2022-06-07 07:31:10.4994856',
                                            'Executing',
                                            NULL,
                                            NULL,
                                            NULL
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '34e87d1f18da43c4a95f62c782c3aa7c',
                                            NULL,
                                            'b17de772b948446698ca8c38fdcba3f4',
                                            'dac9fadd-0ed9-49a3-962e-f96939f7ba6e',
                                            'Fork',
                                            '2022-06-07 07:31:10.4960525',
                                            'Executed',
                                            NULL,
                                            NULL,
                                            '{
  "Outcomes": [
    "reject",
    "approve"
  ]
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '53ee73c06b254e56b14951c0b5cfeaea',
                                            NULL,
                                            'b17de772b948446698ca8c38fdcba3f4',
                                            'dac9fadd-0ed9-49a3-962e-f96939f7ba6e',
                                            'Fork',
                                            '2022-06-07 07:31:10.4955286',
                                            'Executing',
                                            NULL,
                                            NULL,
                                            NULL
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '614305c3487b4e64a4afaf99f20179f8',
                                            NULL,
                                            'b17de772b948446698ca8c38fdcba3f4',
                                            '10dee174-36ce-45b5-a99b-2112c160cc8c',
                                            'SignalReceived',
                                            '2022-06-07 07:31:10.4996848',
                                            'Executed',
                                            NULL,
                                            NULL,
                                            '{
  "Outcomes": []
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '7b33bbdcd09a4f5eb27cafc0b8c94fa0',
                                            NULL,
                                            'b17de772b948446698ca8c38fdcba3f4',
                                            '55da7374-13ea-49e2-8099-9e7e2513e8a2',
                                            'HttpEndpoint',
                                            '2022-06-07 07:31:10.2424664',
                                            'Executed',
                                            NULL,
                                            NULL,
                                            '{
  "Outcomes": [
    "Done"
  ],
  "Inbound Request": {
    "$id": "1",
    "path": "/LeaveApprove",
    "method": "POST",
    "queryString": {
      "$id": "2"
    },
    "routeValues": {
      "$id": "3",
      "$type": "Microsoft.AspNetCore.Routing.RouteValueDictionary, Microsoft.AspNetCore.Http.Abstractions"
    },
    "headers": {
      "$id": "4",
      "Accept": "*/*",
      "Connection": "keep-alive",
      "Host": "localhost:5298",
      "User-Agent": "PostmanRuntime/7.29.0",
      "Accept-Encoding": "gzip, deflate, br",
      "Content-Type": "text/plain",
      "Content-Length": "66",
      "Postman-Token": "fb6b9a62-6955-4f36-bc3d-618f0804dc4e"
    },
    "body": "{\r\n    \"Name\":\"张三\",\r\n    \"Days\":3,\r\n    \"Reason\":\"休息\"\r\n}\r\n",
    "rawBody": "{\r\n    \"Name\":\"张三\",\r\n    \"Days\":3,\r\n    \"Reason\":\"休息\"\r\n}\r\n"
  }
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '7da498645696488bb2128f7bd9ccb5c5',
                                            NULL,
                                            'b17de772b948446698ca8c38fdcba3f4',
                                            '32d7eef9-1b28-4881-a3aa-923106f91291',
                                            'SignalReceived',
                                            '2022-06-07 07:31:10.4987273',
                                            'Executed',
                                            NULL,
                                            NULL,
                                            '{
  "Outcomes": []
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '896c27870ddf40b6b0b9ee687d78e65e',
                                            NULL,
                                            'b17de772b948446698ca8c38fdcba3f4',
                                            '94e88ab3-507a-44c2-9147-528b25187649',
                                            'WriteHttpResponse',
                                            '2022-06-07 07:31:10.4921358',
                                            'Executed',
                                            NULL,
                                            NULL,
                                            '{
  "Outcomes": [
    "Done"
  ]
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '9fbe84c191174c3d97bd2d60f03d21a6',
                                            NULL,
                                            'b17de772b948446698ca8c38fdcba3f4',
                                            'a88a6e9c-42b6-4709-b6c7-24c947d0a05e',
                                            'SetVariable',
                                            '2022-06-07 07:31:10.4112809',
                                            'Executing',
                                            NULL,
                                            NULL,
                                            NULL
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            'a63a6b37c562418e9486d2dbef68f431',
                                            NULL,
                                            'b17de772b948446698ca8c38fdcba3f4',
                                            'a88a6e9c-42b6-4709-b6c7-24c947d0a05e',
                                            'SetVariable',
                                            '2022-06-07 07:31:10.4123219',
                                            'Executed',
                                            NULL,
                                            NULL,
                                            '{
  "Outcomes": [
    "Done"
  ]
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            'b0db39df8f9f417aa9868d1dc9d56dea',
                                            NULL,
                                            'b17de772b948446698ca8c38fdcba3f4',
                                            '94e88ab3-507a-44c2-9147-528b25187649',
                                            'WriteHttpResponse',
                                            '2022-06-07 07:31:10.487864',
                                            'Executing',
                                            NULL,
                                            NULL,
                                            NULL
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            'c57f129614c24db6ba5228963782da02',
                                            NULL,
                                            'b17de772b948446698ca8c38fdcba3f4',
                                            '55da7374-13ea-49e2-8099-9e7e2513e8a2',
                                            'HttpEndpoint',
                                            '2022-06-07 07:31:10.2162042',
                                            'Executing',
                                            NULL,
                                            NULL,
                                            NULL
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '1be43f9afb234ce7bbbe4c63278db7c9',
                                            NULL,
                                            'b17de772b948446698ca8c38fdcba3f4',
                                            'bc966760-e353-49ae-9bdd-bae1da6cf906',
                                            'SetVariable',
                                            '2022-06-07 07:31:29.9375195',
                                            'Executed',
                                            NULL,
                                            NULL,
                                            '{
  "Outcomes": [
    "Done"
  ]
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '6c9fcc770d6e47be88e20f61b19a03f8',
                                            NULL,
                                            'b17de772b948446698ca8c38fdcba3f4',
                                            '32d7eef9-1b28-4881-a3aa-923106f91291',
                                            'SignalReceived',
                                            '2022-06-07 07:31:29.926969',
                                            'Resuming',
                                            NULL,
                                            NULL,
                                            NULL
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '6ede57ee6c4447e6bbbf65f63b7d4b01',
                                            NULL,
                                            'b17de772b948446698ca8c38fdcba3f4',
                                            '750f4c01-e799-454f-a640-acde83ee4797',
                                            'WriteHttpResponse',
                                            '2022-06-07 07:31:29.9718424',
                                            'Executed',
                                            NULL,
                                            NULL,
                                            '{
  "Outcomes": [
    "Done"
  ]
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '7fde6a7ee3e9486197b32794b1236f94',
                                            NULL,
                                            'b17de772b948446698ca8c38fdcba3f4',
                                            '3c9ca1bb-f817-4b9a-9229-c606f79cae59',
                                            'Join',
                                            '2022-06-07 07:31:29.9548872',
                                            'Executed',
                                            NULL,
                                            NULL,
                                            '{
  "Outcomes": [
    "Done"
  ],
  "Completed": true,
  "Current Inbound Transitions": [
    "@bc966760-e353-49ae-9bdd-bae1da6cf906_Done"
  ]
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '9e15e5e19ee04f8abfdb5e066372a270',
                                            NULL,
                                            'b17de772b948446698ca8c38fdcba3f4',
                                            '3c9ca1bb-f817-4b9a-9229-c606f79cae59',
                                            'Join',
                                            '2022-06-07 07:31:29.9403859',
                                            'Executing',
                                            NULL,
                                            NULL,
                                            NULL
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            'c7275ce9cd77416fbbd98aaf1c546e5d',
                                            NULL,
                                            'b17de772b948446698ca8c38fdcba3f4',
                                            '32d7eef9-1b28-4881-a3aa-923106f91291',
                                            'SignalReceived',
                                            '2022-06-07 07:31:29.9325174',
                                            'Resumed',
                                            NULL,
                                            NULL,
                                            '{
  "Outcomes": [
    "Done"
  ],
  "Output": null
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            'ec92d6466b5945be8428e26e28d3db4c',
                                            NULL,
                                            'b17de772b948446698ca8c38fdcba3f4',
                                            'bc966760-e353-49ae-9bdd-bae1da6cf906',
                                            'SetVariable',
                                            '2022-06-07 07:31:29.9371893',
                                            'Executing',
                                            NULL,
                                            NULL,
                                            NULL
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            'f15401a7f58a4a308e505e06d91ca911',
                                            NULL,
                                            'b17de772b948446698ca8c38fdcba3f4',
                                            '750f4c01-e799-454f-a640-acde83ee4797',
                                            'WriteHttpResponse',
                                            '2022-06-07 07:31:29.9638711',
                                            'Executing',
                                            NULL,
                                            NULL,
                                            NULL
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '351b6c9e0b2d49278c8754cc9adee819',
                                            NULL,
                                            '20372dc0bb364c939d6ed4f44771e9ce',
                                            '6e851021-1127-4c07-a1db-15e1659c6da8',
                                            'WriteHttpResponse',
                                            '2023-03-15 05:50:08.6758285',
                                            'Executed',
                                            NULL,
                                            NULL,
                                            '{
  "Outcomes": [
    "Done"
  ]
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '8e844e018c8243dca9396d725ddcdf35',
                                            NULL,
                                            '20372dc0bb364c939d6ed4f44771e9ce',
                                            '479d5e06-798c-4e7c-9840-369abe48aa6a',
                                            'HttpEndpoint',
                                            '2023-03-15 05:50:08.6670651',
                                            'Executed',
                                            NULL,
                                            NULL,
                                            '{
  "Outcomes": [
    "Done"
  ],
  "Inbound Request": {
    "$id": "1",
    "path": "/hello-world",
    "method": "GET",
    "queryString": {
      "$id": "2"
    },
    "routeValues": {
      "$id": "3",
      "$type": "Microsoft.AspNetCore.Routing.RouteValueDictionary, Microsoft.AspNetCore.Http.Abstractions"
    },
    "headers": {
      "$id": "4",
      "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9",
      "Connection": "keep-alive",
      "Host": "localhost:5298",
      "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36",
      "Accept-Encoding": "gzip, deflate, br",
      "Accept-Language": "zh-CN,zh;q=0.9",
      "Upgrade-Insecure-Requests": "1",
      "sec-ch-ua": "\" Not A;Brand\";v=\"99\", \"Chromium\";v=\"96\", \"Google Chrome\";v=\"96\"",
      "sec-ch-ua-mobile": "?0",
      "sec-ch-ua-platform": "\"Windows\"",
      "Sec-Fetch-Site": "none",
      "Sec-Fetch-Mode": "navigate",
      "Sec-Fetch-User": "?1",
      "Sec-Fetch-Dest": "document"
    }
  }
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            'd492922f2fd74802ae8152865dac4656',
                                            NULL,
                                            '20372dc0bb364c939d6ed4f44771e9ce',
                                            '479d5e06-798c-4e7c-9840-369abe48aa6a',
                                            'HttpEndpoint',
                                            '2023-03-15 05:50:08.6562103',
                                            'Executing',
                                            NULL,
                                            NULL,
                                            NULL
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            'd76fd078999e4753afa1fee18a0930fd',
                                            NULL,
                                            '20372dc0bb364c939d6ed4f44771e9ce',
                                            '6e851021-1127-4c07-a1db-15e1659c6da8',
                                            'WriteHttpResponse',
                                            '2023-03-15 05:50:08.6728881',
                                            'Executing',
                                            NULL,
                                            NULL,
                                            NULL
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '1786e4f66bb145d28690d34d4ee4b305',
                                            NULL,
                                            '1e0d9e6e198248fcbf5e6735f8c11fb8',
                                            '479d5e06-798c-4e7c-9840-369abe48aa6a',
                                            'HttpEndpoint',
                                            '2023-03-15 07:22:45.5314516',
                                            'Executed',
                                            NULL,
                                            NULL,
                                            '{
  "Outcomes": [
    "Done"
  ],
  "Inbound Request": {
    "$id": "1",
    "path": "/hello-world",
    "method": "GET",
    "queryString": {
      "$id": "2"
    },
    "routeValues": {
      "$id": "3",
      "$type": "Microsoft.AspNetCore.Routing.RouteValueDictionary, Microsoft.AspNetCore.Http.Abstractions"
    },
    "headers": {
      "$id": "4",
      "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9",
      "Connection": "keep-alive",
      "Host": "localhost:5298",
      "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36",
      "Accept-Encoding": "gzip, deflate, br",
      "Accept-Language": "zh-CN,zh;q=0.9",
      "Upgrade-Insecure-Requests": "1",
      "sec-ch-ua": "\" Not A;Brand\";v=\"99\", \"Chromium\";v=\"96\", \"Google Chrome\";v=\"96\"",
      "sec-ch-ua-mobile": "?0",
      "sec-ch-ua-platform": "\"Windows\"",
      "Sec-Fetch-Site": "none",
      "Sec-Fetch-Mode": "navigate",
      "Sec-Fetch-User": "?1",
      "Sec-Fetch-Dest": "document"
    }
  }
}'
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '3e4ff97f0b624a50989c430a7e525376',
                                            NULL,
                                            '1e0d9e6e198248fcbf5e6735f8c11fb8',
                                            '479d5e06-798c-4e7c-9840-369abe48aa6a',
                                            'HttpEndpoint',
                                            '2023-03-15 07:22:45.5217162',
                                            'Executing',
                                            NULL,
                                            NULL,
                                            NULL
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '54889167c7eb44d29c2c7c7c98acb7c3',
                                            NULL,
                                            '1e0d9e6e198248fcbf5e6735f8c11fb8',
                                            '6e851021-1127-4c07-a1db-15e1659c6da8',
                                            'WriteHttpResponse',
                                            '2023-03-15 07:22:45.5350507',
                                            'Executing',
                                            NULL,
                                            NULL,
                                            NULL
                                        );

INSERT INTO WorkflowExecutionLogRecords (
                                            Id,
                                            TenantId,
                                            WorkflowInstanceId,
                                            ActivityId,
                                            ActivityType,
                                            Timestamp,
                                            EventName,
                                            Message,
                                            Source,
                                            Data
                                        )
                                        VALUES (
                                            '8a7c44d19d3644c59d6cfb95a4978e9e',
                                            NULL,
                                            '1e0d9e6e198248fcbf5e6735f8c11fb8',
                                            '6e851021-1127-4c07-a1db-15e1659c6da8',
                                            'WriteHttpResponse',
                                            '2023-03-15 07:22:45.5399942',
                                            'Executed',
                                            NULL,
                                            NULL,
                                            '{
  "Outcomes": [
    "Done"
  ]
}'
                                        );


-- 表：WorkflowInstances
CREATE TABLE IF NOT EXISTS WorkflowInstances (
    Id                     TEXT    NOT NULL
                                   CONSTRAINT PK_WorkflowInstances PRIMARY KEY,
    CancelledAt            TEXT,
    ContextId              TEXT,
    ContextType            TEXT,
    CorrelationId          TEXT    NOT NULL,
    CreatedAt              TEXT    NOT NULL,
    Data                   TEXT,
    DefinitionId           TEXT    NOT NULL,
    FaultedAt              TEXT,
    FinishedAt             TEXT,
    LastExecutedActivityId TEXT,
    LastExecutedAt         TEXT,
    Name                   TEXT,
    TenantId               TEXT,
    Version                INTEGER NOT NULL,
    WorkflowStatus         INTEGER NOT NULL,
    DefinitionVersionId    TEXT    NOT NULL
                                   DEFAULT ''
);

INSERT INTO WorkflowInstances (
                                  Id,
                                  CancelledAt,
                                  ContextId,
                                  ContextType,
                                  CorrelationId,
                                  CreatedAt,
                                  Data,
                                  DefinitionId,
                                  FaultedAt,
                                  FinishedAt,
                                  LastExecutedActivityId,
                                  LastExecutedAt,
                                  Name,
                                  TenantId,
                                  Version,
                                  WorkflowStatus,
                                  DefinitionVersionId
                              )
                              VALUES (
                                  '90918ea41f9a45e8bbc072e9c4f44aa6',
                                  NULL,
                                  NULL,
                                  NULL,
                                  '961f112f22f94ea0966c53e6609c9928',
                                  '2022-06-04 02:13:55.7110323',
                                  '{
  "$id": "1",
  "input": {
    "$id": "2",
    "providerName": "WorkflowInstance"
  },
  "output": {
    "$id": "3",
    "activityId": "479d5e06-798c-4e7c-9840-369abe48aa6a"
  },
  "variables": {
    "$id": "4",
    "data": {}
  },
  "activityData": {
    "$id": "5",
    "d7a8f96fa2fd420682483b50ea3813a4": {
      "$id": "6",
      "Input": {
        "$id": "7",
        "$type": "Elsa.Activities.Http.Models.HttpRequestModel, Elsa.Activities.Http",
        "path": "/hello-world",
        "method": "GET",
        "queryString": {
          "$id": "8"
        },
        "routeValues": {
          "$id": "9",
          "$type": "Microsoft.AspNetCore.Routing.RouteValueDictionary, Microsoft.AspNetCore.Http.Abstractions"
        },
        "headers": {
          "$id": "10",
          "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8",
          "Connection": "keep-alive",
          "Host": "localhost:5298",
          "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:101.0) Gecko/20100101 Firefox/101.0",
          "Accept-Encoding": "gzip, deflate, br",
          "Accept-Language": "zh-CN,zh;q=0.8,zh-TW;q=0.7,zh-HK;q=0.5,en-US;q=0.3,en;q=0.2",
          "Cookie": "XSRF-TOKEN=CfDJ8GEOui0fo-dFpWFI2S7d5fnWgf9CsI8xz37tpDWwOPsh6pfZF764muiBQcQvW7d1Nr8qbR2Nx9eQric_iF1KutV-jk4MbX7VT5AQs6q3ZM5ZwyzseJcH3lXJi8PHOMn1sBlYNooAzoHTlZiN0N49Zm0BSBVMTRmWQkFOwaIvgDBBZV4FXh_N3qTcp04bI0HrbA; .AspNetCore.Culture=c%3Dzh-Hans%7Cuic%3Dzh-Hans; ai_user=Ddi3D|2022-03-11T09:26:30.917Z",
          "Upgrade-Insecure-Requests": "1",
          "Sec-Fetch-Dest": "document",
          "Sec-Fetch-Mode": "navigate",
          "Sec-Fetch-Site": "none",
          "Sec-Fetch-User": "?1"
        }
      }
    },
    "479d5e06-798c-4e7c-9840-369abe48aa6a": {
      "$id": "11",
      "Path": "/hello-world",
      "Methods": {
        "$type": "System.Collections.Generic.HashSet`1[[System.String, System.Private.CoreLib]], System.Private.CoreLib",
        "$values": [
          "GET"
        ]
      },
      "ReadContent": false,
      "TargetType": null,
      "Schema": "",
      "Authorize": false,
      "Policy": null,
      "Output": {
        "$ref": "7"
      },
      "_Lifecycle": {
        "$id": "12",
        "$type": "Elsa.Models.ActivityLifecycle, Elsa.Core",
        "executing": true,
        "executed": true
      }
    },
    "6e851021-1127-4c07-a1db-15e1659c6da8": {
      "$id": "13",
      "StatusCode": "OK",
      "Content": "<h1>你好</h1>",
      "ContentType": "text/html",
      "CharSet": "utf-8",
      "ResponseHeaders": null,
      "_Lifecycle": {
        "$id": "14",
        "$type": "Elsa.Models.ActivityLifecycle, Elsa.Core",
        "executing": true,
        "executed": true
      }
    }
  },
  "metadata": {
    "$id": "15"
  },
  "blockingActivities": [],
  "scheduledActivities": [],
  "scopes": []
}',
                                  'd7a8f96fa2fd420682483b50ea3813a4',
                                  NULL,
                                  '2022-06-04 02:13:56.2838255',
                                  '6e851021-1127-4c07-a1db-15e1659c6da8',
                                  '2022-06-04 02:13:56.2822704',
                                  NULL,
                                  NULL,
                                  1,
                                  2,
                                  'c390d8927f29499b81b55bdc5172ca17'
                              );

INSERT INTO WorkflowInstances (
                                  Id,
                                  CancelledAt,
                                  ContextId,
                                  ContextType,
                                  CorrelationId,
                                  CreatedAt,
                                  Data,
                                  DefinitionId,
                                  FaultedAt,
                                  FinishedAt,
                                  LastExecutedActivityId,
                                  LastExecutedAt,
                                  Name,
                                  TenantId,
                                  Version,
                                  WorkflowStatus,
                                  DefinitionVersionId
                              )
                              VALUES (
                                  'a40b810f6be24aefafab6d36e19be9c9',
                                  NULL,
                                  NULL,
                                  NULL,
                                  '5d09e70621704d5c97c44c0740379b03',
                                  '2022-06-07 00:45:46.358936',
                                  '{
  "$id": "1",
  "input": {
    "$id": "2",
    "providerName": "WorkflowInstance"
  },
  "output": {
    "$id": "3",
    "activityId": "68d13fe1-40cf-4737-8803-f5400478509a"
  },
  "variables": {
    "$id": "4",
    "data": {
      "mydata": {
        "$id": "5",
        "$type": "System.Dynamic.ExpandoObject, System.Linq.Expressions",
        "Name": "张三",
        "Height": 1.75,
        "Weight": 75
      }
    }
  },
  "activityData": {
    "$id": "6",
    "d2c6193b3473441e83203f9f5639b39b": {
      "$id": "7",
      "Input": {
        "$id": "8",
        "$type": "Elsa.Activities.Http.Models.HttpRequestModel, Elsa.Activities.Http",
        "path": "/bmi",
        "method": "POST",
        "queryString": {
          "$id": "9"
        },
        "routeValues": {
          "$id": "10",
          "$type": "Microsoft.AspNetCore.Routing.RouteValueDictionary, Microsoft.AspNetCore.Http.Abstractions"
        },
        "headers": {
          "$id": "11",
          "Accept": "*/*",
          "Connection": "keep-alive",
          "Host": "localhost:5298",
          "User-Agent": "PostmanRuntime/7.29.0",
          "Accept-Encoding": "gzip, deflate, br",
          "Content-Type": "application/json",
          "Content-Length": "63",
          "Postman-Token": "8a4cd2de-e625-44e0-afed-94fb26394e2d"
        },
        "body": {
          "$ref": "5"
        },
        "rawBody": "{\r\n    \"Name\":\"张三\",\r\n    \"Height\":1.75,\r\n    \"Weight\":75\r\n}"
      }
    },
    "68d13fe1-40cf-4737-8803-f5400478509a": {
      "$id": "12",
      "Path": "/bmi",
      "Methods": {
        "$type": "System.Collections.Generic.HashSet`1[[System.String, System.Private.CoreLib]], System.Private.CoreLib",
        "$values": [
          "POST"
        ]
      },
      "ReadContent": true,
      "TargetType": null,
      "Schema": "",
      "Authorize": false,
      "Policy": null,
      "Output": {
        "$ref": "8"
      },
      "_Lifecycle": {
        "$id": "13",
        "$type": "Elsa.Models.ActivityLifecycle, Elsa.Core",
        "executing": true,
        "executed": true
      }
    },
    "08ace775-b5e5-48ab-b937-da2caa026448": {
      "$id": "14",
      "VariableName": "mydata",
      "Value": {
        "$ref": "5"
      },
      "_Lifecycle": {
        "$id": "15",
        "$type": "Elsa.Models.ActivityLifecycle, Elsa.Core",
        "executing": true,
        "executed": true
      }
    },
    "cf812a65-140d-47a1-8c08-3bf8706106b0": {
      "$id": "16",
      "StatusCode": "OK",
      "Content": "Data Received {myData.name} {myData.Height} {myData.Weight}",
      "ContentType": "text/plain",
      "CharSet": "utf-8",
      "ResponseHeaders": null,
      "_Lifecycle": {
        "$id": "17",
        "$type": "Elsa.Models.ActivityLifecycle, Elsa.Core",
        "executing": true,
        "executed": true
      }
    }
  },
  "metadata": {
    "$id": "18"
  },
  "blockingActivities": [],
  "scheduledActivities": [],
  "scopes": []
}',
                                  'd2c6193b3473441e83203f9f5639b39b',
                                  NULL,
                                  '2022-06-07 00:45:47.0243876',
                                  'cf812a65-140d-47a1-8c08-3bf8706106b0',
                                  '2022-06-07 00:45:47.0235845',
                                  NULL,
                                  NULL,
                                  1,
                                  2,
                                  '72b57fef02444d3eafec0ebf05df348e'
                              );

INSERT INTO WorkflowInstances (
                                  Id,
                                  CancelledAt,
                                  ContextId,
                                  ContextType,
                                  CorrelationId,
                                  CreatedAt,
                                  Data,
                                  DefinitionId,
                                  FaultedAt,
                                  FinishedAt,
                                  LastExecutedActivityId,
                                  LastExecutedAt,
                                  Name,
                                  TenantId,
                                  Version,
                                  WorkflowStatus,
                                  DefinitionVersionId
                              )
                              VALUES (
                                  '5797f6e71bc04f00b68f83653bdb52eb',
                                  NULL,
                                  NULL,
                                  NULL,
                                  '607fef73e5c949a1925552deffb3f7e5',
                                  '2022-06-07 00:49:48.8765661',
                                  '{
  "$id": "1",
  "input": {
    "$id": "2",
    "providerName": "WorkflowInstance"
  },
  "output": {
    "$id": "3",
    "activityId": "68d13fe1-40cf-4737-8803-f5400478509a"
  },
  "variables": {
    "$id": "4",
    "data": {
      "mydata": {
        "$id": "5",
        "$type": "System.Dynamic.ExpandoObject, System.Linq.Expressions",
        "Name": "张三",
        "Height": 1.75,
        "Weight": 75
      }
    }
  },
  "activityData": {
    "$id": "6",
    "d2c6193b3473441e83203f9f5639b39b": {
      "$id": "7",
      "Input": {
        "$id": "8",
        "$type": "Elsa.Activities.Http.Models.HttpRequestModel, Elsa.Activities.Http",
        "path": "/bmi",
        "method": "POST",
        "queryString": {
          "$id": "9"
        },
        "routeValues": {
          "$id": "10",
          "$type": "Microsoft.AspNetCore.Routing.RouteValueDictionary, Microsoft.AspNetCore.Http.Abstractions"
        },
        "headers": {
          "$id": "11",
          "Accept": "*/*",
          "Connection": "keep-alive",
          "Host": "localhost:5298",
          "User-Agent": "PostmanRuntime/7.29.0",
          "Accept-Encoding": "gzip, deflate, br",
          "Content-Type": "application/json",
          "Content-Length": "63",
          "Postman-Token": "dd1f76a1-b0b0-41d1-861e-bb8f7be69f1e"
        },
        "body": {
          "$ref": "5"
        },
        "rawBody": "{\r\n    \"Name\":\"张三\",\r\n    \"Height\":1.75,\r\n    \"Weight\":75\r\n}"
      }
    },
    "68d13fe1-40cf-4737-8803-f5400478509a": {
      "$id": "12",
      "Path": "/bmi",
      "Methods": {
        "$type": "System.Collections.Generic.HashSet`1[[System.String, System.Private.CoreLib]], System.Private.CoreLib",
        "$values": [
          "POST"
        ]
      },
      "ReadContent": true,
      "TargetType": null,
      "Schema": "",
      "Authorize": false,
      "Policy": null,
      "Output": {
        "$ref": "8"
      },
      "_Lifecycle": {
        "$id": "13",
        "$type": "Elsa.Models.ActivityLifecycle, Elsa.Core",
        "executing": true,
        "executed": true
      }
    },
    "08ace775-b5e5-48ab-b937-da2caa026448": {
      "$id": "14",
      "VariableName": "mydata",
      "Value": {
        "$ref": "5"
      },
      "_Lifecycle": {
        "$id": "15",
        "$type": "Elsa.Models.ActivityLifecycle, Elsa.Core",
        "executing": true,
        "executed": true
      }
    },
    "cf812a65-140d-47a1-8c08-3bf8706106b0": {
      "$id": "16",
      "StatusCode": "OK",
      "Content": "Data Received &#x5F20;&#x4E09; 1.75 75",
      "ContentType": "text/plain",
      "CharSet": "utf-8",
      "ResponseHeaders": null,
      "_Lifecycle": {
        "$id": "17",
        "$type": "Elsa.Models.ActivityLifecycle, Elsa.Core",
        "executing": true,
        "executed": true
      }
    }
  },
  "metadata": {
    "$id": "18"
  },
  "blockingActivities": [],
  "scheduledActivities": [],
  "scopes": []
}',
                                  'd2c6193b3473441e83203f9f5639b39b',
                                  NULL,
                                  '2022-06-07 00:49:49.0461684',
                                  'cf812a65-140d-47a1-8c08-3bf8706106b0',
                                  '2022-06-07 00:49:49.0461211',
                                  NULL,
                                  NULL,
                                  2,
                                  2,
                                  'e9734c33468f48f7a7ab6d901c76b1a0'
                              );

INSERT INTO WorkflowInstances (
                                  Id,
                                  CancelledAt,
                                  ContextId,
                                  ContextType,
                                  CorrelationId,
                                  CreatedAt,
                                  Data,
                                  DefinitionId,
                                  FaultedAt,
                                  FinishedAt,
                                  LastExecutedActivityId,
                                  LastExecutedAt,
                                  Name,
                                  TenantId,
                                  Version,
                                  WorkflowStatus,
                                  DefinitionVersionId
                              )
                              VALUES (
                                  '9cbe35a40c4345c98df2481af9fc8628',
                                  NULL,
                                  NULL,
                                  NULL,
                                  'ffc8cb54eaa04017b3777fef7ee211b6',
                                  '2022-06-07 00:50:28.1686413',
                                  '{
  "$id": "1",
  "input": {
    "$id": "2",
    "providerName": "WorkflowInstance"
  },
  "output": {
    "$id": "3",
    "activityId": "68d13fe1-40cf-4737-8803-f5400478509a"
  },
  "variables": {
    "$id": "4",
    "data": {
      "mydata": {
        "$id": "5",
        "$type": "System.Dynamic.ExpandoObject, System.Linq.Expressions",
        "Name": "张三",
        "Height": 1.75,
        "Weight": 75
      }
    }
  },
  "activityData": {
    "$id": "6",
    "d2c6193b3473441e83203f9f5639b39b": {
      "$id": "7",
      "Input": {
        "$id": "8",
        "$type": "Elsa.Activities.Http.Models.HttpRequestModel, Elsa.Activities.Http",
        "path": "/bmi",
        "method": "POST",
        "queryString": {
          "$id": "9"
        },
        "routeValues": {
          "$id": "10",
          "$type": "Microsoft.AspNetCore.Routing.RouteValueDictionary, Microsoft.AspNetCore.Http.Abstractions"
        },
        "headers": {
          "$id": "11",
          "Accept": "*/*",
          "Connection": "keep-alive",
          "Host": "localhost:5298",
          "User-Agent": "PostmanRuntime/7.29.0",
          "Accept-Encoding": "gzip, deflate, br",
          "Content-Type": "application/json",
          "Content-Length": "63",
          "Postman-Token": "99ed0548-e410-4bdb-9bc5-d32785e55868"
        },
        "body": {
          "$ref": "5"
        },
        "rawBody": "{\r\n    \"Name\":\"张三\",\r\n    \"Height\":1.75,\r\n    \"Weight\":75\r\n}"
      }
    },
    "68d13fe1-40cf-4737-8803-f5400478509a": {
      "$id": "12",
      "Path": "/bmi",
      "Methods": {
        "$type": "System.Collections.Generic.HashSet`1[[System.String, System.Private.CoreLib]], System.Private.CoreLib",
        "$values": [
          "POST"
        ]
      },
      "ReadContent": true,
      "TargetType": null,
      "Schema": "",
      "Authorize": false,
      "Policy": null,
      "Output": {
        "$ref": "8"
      },
      "_Lifecycle": {
        "$id": "13",
        "$type": "Elsa.Models.ActivityLifecycle, Elsa.Core",
        "executing": true,
        "executed": true
      }
    },
    "08ace775-b5e5-48ab-b937-da2caa026448": {
      "$id": "14",
      "VariableName": "mydata",
      "Value": {
        "$ref": "5"
      },
      "_Lifecycle": {
        "$id": "15",
        "$type": "Elsa.Models.ActivityLifecycle, Elsa.Core",
        "executing": true,
        "executed": true
      }
    },
    "cf812a65-140d-47a1-8c08-3bf8706106b0": {
      "$id": "16",
      "StatusCode": "OK",
      "Content": "Data Received &#x5F20;&#x4E09; 1.75 75",
      "ContentType": "text/html",
      "CharSet": "utf-8",
      "ResponseHeaders": null,
      "_Lifecycle": {
        "$id": "17",
        "$type": "Elsa.Models.ActivityLifecycle, Elsa.Core",
        "executing": true,
        "executed": true
      }
    }
  },
  "metadata": {
    "$id": "18"
  },
  "blockingActivities": [],
  "scheduledActivities": [],
  "scopes": []
}',
                                  'd2c6193b3473441e83203f9f5639b39b',
                                  NULL,
                                  '2022-06-07 00:50:28.3308436',
                                  'cf812a65-140d-47a1-8c08-3bf8706106b0',
                                  '2022-06-07 00:50:28.3297545',
                                  NULL,
                                  NULL,
                                  3,
                                  2,
                                  '38560ca9806f4ccf9daa70137da3b716'
                              );

INSERT INTO WorkflowInstances (
                                  Id,
                                  CancelledAt,
                                  ContextId,
                                  ContextType,
                                  CorrelationId,
                                  CreatedAt,
                                  Data,
                                  DefinitionId,
                                  FaultedAt,
                                  FinishedAt,
                                  LastExecutedActivityId,
                                  LastExecutedAt,
                                  Name,
                                  TenantId,
                                  Version,
                                  WorkflowStatus,
                                  DefinitionVersionId
                              )
                              VALUES (
                                  '26b7d29e76b94ac2a9ec3f9b5a58e42f',
                                  NULL,
                                  NULL,
                                  NULL,
                                  '41ba0fcb1cc6402d8b7557e9a8b140c0',
                                  '2022-06-07 01:04:37.7104689',
                                  '{
  "$id": "1",
  "input": {
    "$id": "2",
    "providerName": "WorkflowInstance"
  },
  "output": {
    "$id": "3",
    "activityId": "68d13fe1-40cf-4737-8803-f5400478509a"
  },
  "variables": {
    "$id": "4",
    "data": {
      "mydata": {
        "$id": "5",
        "$type": "System.Dynamic.ExpandoObject, System.Linq.Expressions",
        "Name": "张三",
        "Height": 1.75,
        "Weight": 75
      }
    }
  },
  "activityData": {
    "$id": "6",
    "d2c6193b3473441e83203f9f5639b39b": {
      "$id": "7",
      "Input": {
        "$id": "8",
        "$type": "Elsa.Activities.Http.Models.HttpRequestModel, Elsa.Activities.Http",
        "path": "/bmi",
        "method": "POST",
        "queryString": {
          "$id": "9"
        },
        "routeValues": {
          "$id": "10",
          "$type": "Microsoft.AspNetCore.Routing.RouteValueDictionary, Microsoft.AspNetCore.Http.Abstractions"
        },
        "headers": {
          "$id": "11",
          "Accept": "*/*",
          "Connection": "keep-alive",
          "Host": "localhost:5298",
          "User-Agent": "PostmanRuntime/7.29.0",
          "Accept-Encoding": "gzip, deflate, br",
          "Content-Type": "application/json",
          "Content-Length": "63",
          "Postman-Token": "81633512-c5fa-4b0c-b7e4-e85dc6fb1805"
        },
        "body": {
          "$ref": "5"
        },
        "rawBody": "{\r\n    \"Name\":\"张三\",\r\n    \"Height\":1.75,\r\n    \"Weight\":75\r\n}"
      }
    },
    "68d13fe1-40cf-4737-8803-f5400478509a": {
      "$id": "12",
      "Path": "/bmi",
      "Methods": {
        "$type": "System.Collections.Generic.HashSet`1[[System.String, System.Private.CoreLib]], System.Private.CoreLib",
        "$values": [
          "POST"
        ]
      },
      "ReadContent": true,
      "TargetType": null,
      "Schema": "",
      "Authorize": false,
      "Policy": null,
      "Output": {
        "$ref": "8"
      },
      "_Lifecycle": {
        "$id": "13",
        "$type": "Elsa.Models.ActivityLifecycle, Elsa.Core",
        "executing": true,
        "executed": true
      }
    },
    "08ace775-b5e5-48ab-b937-da2caa026448": {
      "$id": "14",
      "VariableName": "mydata",
      "Value": {
        "$ref": "5"
      },
      "_Lifecycle": {
        "$id": "15",
        "$type": "Elsa.Models.ActivityLifecycle, Elsa.Core",
        "executing": true,
        "executed": true
      }
    },
    "cf812a65-140d-47a1-8c08-3bf8706106b0": {
      "$id": "16",
      "StatusCode": "OK",
      "Content": "Data Received &#x5F20;&#x4E09; 1.75 75",
      "ContentType": "text/html",
      "CharSet": "utf-8",
      "ResponseHeaders": null,
      "_Lifecycle": {
        "$id": "17",
        "$type": "Elsa.Models.ActivityLifecycle, Elsa.Core",
        "executing": true,
        "executed": true
      }
    }
  },
  "metadata": {
    "$id": "18"
  },
  "blockingActivities": [],
  "scheduledActivities": [],
  "scopes": []
}',
                                  'd2c6193b3473441e83203f9f5639b39b',
                                  NULL,
                                  '2022-06-07 01:04:37.83349',
                                  'cf812a65-140d-47a1-8c08-3bf8706106b0',
                                  '2022-06-07 01:04:37.8334833',
                                  NULL,
                                  NULL,
                                  3,
                                  2,
                                  '38560ca9806f4ccf9daa70137da3b716'
                              );

INSERT INTO WorkflowInstances (
                                  Id,
                                  CancelledAt,
                                  ContextId,
                                  ContextType,
                                  CorrelationId,
                                  CreatedAt,
                                  Data,
                                  DefinitionId,
                                  FaultedAt,
                                  FinishedAt,
                                  LastExecutedActivityId,
                                  LastExecutedAt,
                                  Name,
                                  TenantId,
                                  Version,
                                  WorkflowStatus,
                                  DefinitionVersionId
                              )
                              VALUES (
                                  '7496cfd047344a359644d44ed80284fe',
                                  NULL,
                                  NULL,
                                  NULL,
                                  '5e305dcdbf3b4db6a6043d87e8a012b7',
                                  '2022-06-07 01:04:54.3588845',
                                  '{
  "$id": "1",
  "input": {
    "$id": "2",
    "providerName": "WorkflowInstance"
  },
  "output": {
    "$id": "3",
    "activityId": "80987150-1b9c-4879-8d33-6f16f78332f8"
  },
  "variables": {
    "$id": "4",
    "data": {
      "mydata": {
        "$id": "5",
        "$type": "System.Dynamic.ExpandoObject, System.Linq.Expressions",
        "Name": "张三",
        "Height": 1.75,
        "Weight": 75
      }
    }
  },
  "activityData": {
    "$id": "6",
    "d2c6193b3473441e83203f9f5639b39b": {
      "$id": "7",
      "Input": {
        "$id": "8",
        "$type": "Elsa.Activities.Http.Models.HttpRequestModel, Elsa.Activities.Http",
        "path": "/bmi",
        "method": "POST",
        "queryString": {
          "$id": "9"
        },
        "routeValues": {
          "$id": "10",
          "$type": "Microsoft.AspNetCore.Routing.RouteValueDictionary, Microsoft.AspNetCore.Http.Abstractions"
        },
        "headers": {
          "$id": "11",
          "Accept": "*/*",
          "Connection": "keep-alive",
          "Host": "localhost:5298",
          "User-Agent": "PostmanRuntime/7.29.0",
          "Accept-Encoding": "gzip, deflate, br",
          "Content-Type": "application/json",
          "Content-Length": "63",
          "Postman-Token": "2f3286e9-46ef-4ca8-bb68-68e9a99d9cbd"
        },
        "body": {
          "$ref": "5"
        },
        "rawBody": "{\r\n    \"Name\":\"张三\",\r\n    \"Height\":1.75,\r\n    \"Weight\":75\r\n}"
      }
    },
    "68d13fe1-40cf-4737-8803-f5400478509a": {
      "$id": "12",
      "Path": "/bmi",
      "Methods": {
        "$type": "System.Collections.Generic.HashSet`1[[System.String, System.Private.CoreLib]], System.Private.CoreLib",
        "$values": [
          "POST"
        ]
      },
      "ReadContent": true,
      "TargetType": null,
      "Schema": "",
      "Authorize": false,
      "Policy": null,
      "Output": {
        "$ref": "8"
      },
      "_Lifecycle": {
        "$id": "13",
        "$type": "Elsa.Models.ActivityLifecycle, Elsa.Core",
        "executing": true,
        "executed": true
      }
    },
    "08ace775-b5e5-48ab-b937-da2caa026448": {
      "$id": "14",
      "VariableName": "mydata",
      "Value": {
        "$ref": "5"
      },
      "_Lifecycle": {
        "$id": "15",
        "$type": "Elsa.Models.ActivityLifecycle, Elsa.Core",
        "executing": true,
        "executed": true
      }
    },
    "80987150-1b9c-4879-8d33-6f16f78332f8": {
      "$id": "16",
      "Script": "Variables.mydata.bmi=Variables.mydata.Weight/Variables.mydata.Height/Variables.mydata.Height",
      "PossibleOutcomes": {
        "$type": "System.Collections.Generic.List`1[[System.String, System.Private.CoreLib]], System.Private.CoreLib",
        "$values": [
          "Done"
        ]
      },
      "Output": null,
      "_Lifecycle": {
        "$id": "17",
        "$type": "Elsa.Models.ActivityLifecycle, Elsa.Core",
        "executing": true,
        "executed": true
      }
    }
  },
  "metadata": {
    "$id": "18"
  },
  "blockingActivities": [],
  "scheduledActivities": [],
  "scopes": [],
  "fault": {
    "$id": "19",
    "exception": {
      "$id": "20",
      "type": "Jint.Runtime.JavaScriptException, Jint",
      "message": "Variables is not defined",
      "stackTrace": "   at <anonymous>:1:1",
      "data": {
        "$id": "21",
        "$type": "System.Collections.ListDictionaryInternal, System.Private.CoreLib"
      }
    },
    "message": "Variables is not defined",
    "faultedActivityId": "80987150-1b9c-4879-8d33-6f16f78332f8",
    "activityInput": {
      "$ref": "8"
    },
    "resuming": false
  }
}',
                                  'd2c6193b3473441e83203f9f5639b39b',
                                  '2022-06-07 01:04:54.8068473',
                                  NULL,
                                  '80987150-1b9c-4879-8d33-6f16f78332f8',
                                  '2022-06-07 01:04:54.7639086',
                                  NULL,
                                  NULL,
                                  4,
                                  4,
                                  '56dc0162a6d9439c8d045732b562ac69'
                              );

INSERT INTO WorkflowInstances (
                                  Id,
                                  CancelledAt,
                                  ContextId,
                                  ContextType,
                                  CorrelationId,
                                  CreatedAt,
                                  Data,
                                  DefinitionId,
                                  FaultedAt,
                                  FinishedAt,
                                  LastExecutedActivityId,
                                  LastExecutedAt,
                                  Name,
                                  TenantId,
                                  Version,
                                  WorkflowStatus,
                                  DefinitionVersionId
                              )
                              VALUES (
                                  '4ff5c047936f40418948583e189dd132',
                                  NULL,
                                  NULL,
                                  NULL,
                                  '7b5398f1393647ec8dfef4b918745fe4',
                                  '2022-06-07 01:05:28.3910936',
                                  '{
  "$id": "1",
  "input": {
    "$id": "2",
    "providerName": "WorkflowInstance"
  },
  "output": {
    "$id": "3",
    "activityId": "80987150-1b9c-4879-8d33-6f16f78332f8"
  },
  "variables": {
    "$id": "4",
    "data": {
      "mydata": {
        "$id": "5",
        "$type": "System.Dynamic.ExpandoObject, System.Linq.Expressions",
        "Name": "张三",
        "Height": 1.75,
        "Weight": 75
      }
    }
  },
  "activityData": {
    "$id": "6",
    "d2c6193b3473441e83203f9f5639b39b": {
      "$id": "7",
      "Input": {
        "$id": "8",
        "$type": "Elsa.Activities.Http.Models.HttpRequestModel, Elsa.Activities.Http",
        "path": "/bmi",
        "method": "POST",
        "queryString": {
          "$id": "9"
        },
        "routeValues": {
          "$id": "10",
          "$type": "Microsoft.AspNetCore.Routing.RouteValueDictionary, Microsoft.AspNetCore.Http.Abstractions"
        },
        "headers": {
          "$id": "11",
          "Accept": "*/*",
          "Connection": "keep-alive",
          "Host": "localhost:5298",
          "User-Agent": "PostmanRuntime/7.29.0",
          "Accept-Encoding": "gzip, deflate, br",
          "Content-Type": "application/json",
          "Content-Length": "63",
          "Postman-Token": "0649f558-df88-4afa-b24e-dda58a80892c"
        },
        "body": {
          "$ref": "5"
        },
        "rawBody": "{\r\n    \"Name\":\"张三\",\r\n    \"Height\":1.75,\r\n    \"Weight\":75\r\n}"
      }
    },
    "68d13fe1-40cf-4737-8803-f5400478509a": {
      "$id": "12",
      "Path": "/bmi",
      "Methods": {
        "$type": "System.Collections.Generic.HashSet`1[[System.String, System.Private.CoreLib]], System.Private.CoreLib",
        "$values": [
          "POST"
        ]
      },
      "ReadContent": true,
      "TargetType": null,
      "Schema": "",
      "Authorize": false,
      "Policy": null,
      "Output": {
        "$ref": "8"
      },
      "_Lifecycle": {
        "$id": "13",
        "$type": "Elsa.Models.ActivityLifecycle, Elsa.Core",
        "executing": true,
        "executed": true
      }
    },
    "08ace775-b5e5-48ab-b937-da2caa026448": {
      "$id": "14",
      "VariableName": "mydata",
      "Value": {
        "$ref": "5"
      },
      "_Lifecycle": {
        "$id": "15",
        "$type": "Elsa.Models.ActivityLifecycle, Elsa.Core",
        "executing": true,
        "executed": true
      }
    },
    "80987150-1b9c-4879-8d33-6f16f78332f8": {
      "$id": "16",
      "Script": "mydata.bmi=mydata.Weight/mydata.Height/mydata.Height",
      "PossibleOutcomes": {
        "$type": "System.Collections.Generic.List`1[[System.String, System.Private.CoreLib]], System.Private.CoreLib",
        "$values": [
          "Done"
        ]
      },
      "Output": null,
      "_Lifecycle": {
        "$id": "17",
        "$type": "Elsa.Models.ActivityLifecycle, Elsa.Core",
        "executing": true,
        "executed": true
      }
    }
  },
  "metadata": {
    "$id": "18"
  },
  "blockingActivities": [],
  "scheduledActivities": [],
  "scopes": [],
  "fault": {
    "$id": "19",
    "exception": {
      "$id": "20",
      "type": "System.InvalidCastException, mscorlib",
      "message": "Invalid cast from ''System.Double'' to ''Newtonsoft.Json.Linq.JToken''.",
      "stackTrace": "   at System.Convert.DefaultToType(IConvertible value, Type targetType, IFormatProvider provider)\r\n   at System.Double.System.IConvertible.ToType(Type type, IFormatProvider provider)\r\n   at Jint.Runtime.Interop.DefaultTypeConverter.Convert(Object value, Type type, IFormatProvider formatProvider)\r\n   at Jint.Runtime.Interop.Reflection.ReflectionAccessor.ConvertValueToSet(Engine engine, Object value)\r\n   at Jint.Runtime.Interop.Reflection.ReflectionAccessor.SetValue(Engine engine, Object target, JsValue value)\r\n   at Jint.Runtime.Interop.ObjectWrapper.Set(JsValue property, JsValue value, JsValue receiver)\r\n   at Jint.Engine.PutValue(Reference reference, JsValue value)\r\n   at Jint.Runtime.Interpreter.Expressions.JintAssignmentExpression.SimpleAssignmentExpression.SetValue(EvaluationContext context)\r\n   at Jint.Runtime.Interpreter.Expressions.JintAssignmentExpression.SimpleAssignmentExpression.EvaluateInternal(EvaluationContext context)\r\n   at Jint.Runtime.Interpreter.Statements.JintExpressionStatement.ExecuteInternal(EvaluationContext context)\r\n   at Jint.Runtime.Interpreter.JintStatementList.Execute(EvaluationContext context)\r\n   at Jint.Engine.<>c__DisplayClass65_0.<Execute>g__DoInvoke|0()\r\n   at Jint.Engine.ExecuteWithConstraints[T](Func`1 callback)\r\n   at Jint.Engine.Execute(Script script)\r\n   at Jint.Engine.Execute(String source, ParserOptions parserOptions)\r\n   at Jint.Engine.Evaluate(String source)\r\n   at Elsa.Scripting.JavaScript.Services.JintJavaScriptEvaluator.ExecuteExpressionAndGetResult(Engine engine, String expression)\r\n   at Elsa.Scripting.JavaScript.Services.JintJavaScriptEvaluator.EvaluateAsync(String expression, Type returnType, ActivityExecutionContext context, Action`1 configureEngine, CancellationToken cancellationToken)\r\n   at Elsa.Activities.JavaScript.RunJavaScript.OnExecuteAsync(ActivityExecutionContext context)\r\n   at Elsa.Services.Workflows.WorkflowRunner.TryExecuteActivityAsync(ActivityOperation activityOperation, ActivityExecutionContext activityExecutionContext, IActivity activity, CancellationToken cancellationToken)",
      "data": {
        "$id": "21",
        "$type": "System.Collections.ListDictionaryInternal, System.Private.CoreLib"
      }
    },
    "message": "Invalid cast from ''System.Double'' to ''Newtonsoft.Json.Linq.JToken''.",
    "faultedActivityId": "80987150-1b9c-4879-8d33-6f16f78332f8",
    "activityInput": {
      "$ref": "8"
    },
    "resuming": false
  }
}',
                                  'd2c6193b3473441e83203f9f5639b39b',
                                  '2022-06-07 01:05:28.8915724',
                                  NULL,
                                  '80987150-1b9c-4879-8d33-6f16f78332f8',
                                  '2022-06-07 01:05:28.8368047',
                                  NULL,
                                  NULL,
                                  5,
                                  4,
                                  '7974f69415bb4d62ac04482b3d8d5c73'
                              );

INSERT INTO WorkflowInstances (
                                  Id,
                                  CancelledAt,
                                  ContextId,
                                  ContextType,
                                  CorrelationId,
                                  CreatedAt,
                                  Data,
                                  DefinitionId,
                                  FaultedAt,
                                  FinishedAt,
                                  LastExecutedActivityId,
                                  LastExecutedAt,
                                  Name,
                                  TenantId,
                                  Version,
                                  WorkflowStatus,
                                  DefinitionVersionId
                              )
                              VALUES (
                                  '1c21b48113524f3188cedaedcb35cb0d',
                                  NULL,
                                  NULL,
                                  NULL,
                                  'b9d5a03f13954b2580b7249dcc6f91a7',
                                  '2022-06-07 01:06:39.4812848',
                                  '{
  "$id": "1",
  "input": {
    "$id": "2",
    "providerName": "WorkflowInstance"
  },
  "output": {
    "$id": "3",
    "activityId": "80987150-1b9c-4879-8d33-6f16f78332f8"
  },
  "variables": {
    "$id": "4",
    "data": {
      "mydata": {
        "$id": "5",
        "$type": "System.Dynamic.ExpandoObject, System.Linq.Expressions",
        "Name": "张三",
        "Height": 1.75,
        "Weight": 75,
        "bmi": 0
      }
    }
  },
  "activityData": {
    "$id": "6",
    "d2c6193b3473441e83203f9f5639b39b": {
      "$id": "7",
      "Input": {
        "$id": "8",
        "$type": "Elsa.Activities.Http.Models.HttpRequestModel, Elsa.Activities.Http",
        "path": "/bmi",
        "method": "POST",
        "queryString": {
          "$id": "9"
        },
        "routeValues": {
          "$id": "10",
          "$type": "Microsoft.AspNetCore.Routing.RouteValueDictionary, Microsoft.AspNetCore.Http.Abstractions"
        },
        "headers": {
          "$id": "11",
          "Accept": "*/*",
          "Connection": "keep-alive",
          "Host": "localhost:5298",
          "User-Agent": "PostmanRuntime/7.29.0",
          "Accept-Encoding": "gzip, deflate, br",
          "Content-Type": "application/json",
          "Content-Length": "77",
          "Postman-Token": "532fe72f-4063-4f78-84f8-06ceed05d4fa"
        },
        "body": {
          "$ref": "5"
        },
        "rawBody": "{\r\n    \"Name\":\"张三\",\r\n    \"Height\":1.75,\r\n    \"Weight\":75,\r\n    \"bmi\":0\r\n}"
      }
    },
    "68d13fe1-40cf-4737-8803-f5400478509a": {
      "$id": "12",
      "Path": "/bmi",
      "Methods": {
        "$type": "System.Collections.Generic.HashSet`1[[System.String, System.Private.CoreLib]], System.Private.CoreLib",
        "$values": [
          "POST"
        ]
      },
      "ReadContent": true,
      "TargetType": null,
      "Schema": "",
      "Authorize": false,
      "Policy": null,
      "Output": {
        "$ref": "8"
      },
      "_Lifecycle": {
        "$id": "13",
        "$type": "Elsa.Models.ActivityLifecycle, Elsa.Core",
        "executing": true,
        "executed": true
      }
    },
    "08ace775-b5e5-48ab-b937-da2caa026448": {
      "$id": "14",
      "VariableName": "mydata",
      "Value": {
        "$ref": "5"
      },
      "_Lifecycle": {
        "$id": "15",
        "$type": "Elsa.Models.ActivityLifecycle, Elsa.Core",
        "executing": true,
        "executed": true
      }
    },
    "80987150-1b9c-4879-8d33-6f16f78332f8": {
      "$id": "16",
      "Script": "mydata.bmi=mydata.Weight/mydata.Height/mydata.Height",
      "PossibleOutcomes": {
        "$type": "System.Collections.Generic.List`1[[System.String, System.Private.CoreLib]], System.Private.CoreLib",
        "$values": [
          "Done"
        ]
      },
      "Output": null,
      "_Lifecycle": {
        "$id": "17",
        "$type": "Elsa.Models.ActivityLifecycle, Elsa.Core",
        "executing": true,
        "executed": true
      }
    }
  },
  "metadata": {
    "$id": "18"
  },
  "blockingActivities": [],
  "scheduledActivities": [],
  "scopes": [],
  "fault": {
    "$id": "19",
    "exception": {
      "$id": "20",
      "type": "System.InvalidCastException, mscorlib",
      "message": "Invalid cast from ''System.Double'' to ''Newtonsoft.Json.Linq.JToken''.",
      "stackTrace": "   at System.Convert.DefaultToType(IConvertible value, Type targetType, IFormatProvider provider)\r\n   at System.Double.System.IConvertible.ToType(Type type, IFormatProvider provider)\r\n   at Jint.Runtime.Interop.DefaultTypeConverter.Convert(Object value, Type type, IFormatProvider formatProvider)\r\n   at Jint.Runtime.Interop.Reflection.ReflectionAccessor.ConvertValueToSet(Engine engine, Object value)\r\n   at Jint.Runtime.Interop.Reflection.ReflectionAccessor.SetValue(Engine engine, Object target, JsValue value)\r\n   at Jint.Runtime.Interop.ObjectWrapper.Set(JsValue property, JsValue value, JsValue receiver)\r\n   at Jint.Engine.PutValue(Reference reference, JsValue value)\r\n   at Jint.Runtime.Interpreter.Expressions.JintAssignmentExpression.SimpleAssignmentExpression.SetValue(EvaluationContext context)\r\n   at Jint.Runtime.Interpreter.Expressions.JintAssignmentExpression.SimpleAssignmentExpression.EvaluateInternal(EvaluationContext context)\r\n   at Jint.Runtime.Interpreter.Statements.JintExpressionStatement.ExecuteInternal(EvaluationContext context)\r\n   at Jint.Runtime.Interpreter.JintStatementList.Execute(EvaluationContext context)\r\n   at Jint.Engine.<>c__DisplayClass65_0.<Execute>g__DoInvoke|0()\r\n   at Jint.Engine.ExecuteWithConstraints[T](Func`1 callback)\r\n   at Jint.Engine.Execute(Script script)\r\n   at Jint.Engine.Execute(String source, ParserOptions parserOptions)\r\n   at Jint.Engine.Evaluate(String source)\r\n   at Elsa.Scripting.JavaScript.Services.JintJavaScriptEvaluator.ExecuteExpressionAndGetResult(Engine engine, String expression)\r\n   at Elsa.Scripting.JavaScript.Services.JintJavaScriptEvaluator.EvaluateAsync(String expression, Type returnType, ActivityExecutionContext context, Action`1 configureEngine, CancellationToken cancellationToken)\r\n   at Elsa.Activities.JavaScript.RunJavaScript.OnExecuteAsync(ActivityExecutionContext context)\r\n   at Elsa.Services.Workflows.WorkflowRunner.TryExecuteActivityAsync(ActivityOperation activityOperation, ActivityExecutionContext activityExecutionContext, IActivity activity, CancellationToken cancellationToken)",
      "data": {
        "$id": "21",
        "$type": "System.Collections.ListDictionaryInternal, System.Private.CoreLib"
      }
    },
    "message": "Invalid cast from ''System.Double'' to ''Newtonsoft.Json.Linq.JToken''.",
    "faultedActivityId": "80987150-1b9c-4879-8d33-6f16f78332f8",
    "activityInput": {
      "$ref": "8"
    },
    "resuming": false
  }
}',
                                  'd2c6193b3473441e83203f9f5639b39b',
                                  '2022-06-07 01:06:39.8172196',
                                  NULL,
                                  '80987150-1b9c-4879-8d33-6f16f78332f8',
                                  '2022-06-07 01:06:39.7606658',
                                  NULL,
                                  NULL,
                                  5,
                                  4,
                                  '7974f69415bb4d62ac04482b3d8d5c73'
                              );

INSERT INTO WorkflowInstances (
                                  Id,
                                  CancelledAt,
                                  ContextId,
                                  ContextType,
                                  CorrelationId,
                                  CreatedAt,
                                  Data,
                                  DefinitionId,
                                  FaultedAt,
                                  FinishedAt,
                                  LastExecutedActivityId,
                                  LastExecutedAt,
                                  Name,
                                  TenantId,
                                  Version,
                                  WorkflowStatus,
                                  DefinitionVersionId
                              )
                              VALUES (
                                  '41adeaee3b2a46db9e6a337dfdfa41e2',
                                  NULL,
                                  NULL,
                                  NULL,
                                  '49676898fda34932b25b2ecbb73148a7',
                                  '2022-06-07 01:06:54.8126699',
                                  '{
  "$id": "1",
  "input": {
    "$id": "2",
    "providerName": "WorkflowInstance"
  },
  "output": {
    "$id": "3",
    "activityId": "80987150-1b9c-4879-8d33-6f16f78332f8"
  },
  "variables": {
    "$id": "4",
    "data": {
      "mydata": {
        "$id": "5",
        "$type": "System.Dynamic.ExpandoObject, System.Linq.Expressions",
        "Name": "张三",
        "Height": 1.75,
        "Weight": 75,
        "bmi": 0
      }
    }
  },
  "activityData": {
    "$id": "6",
    "d2c6193b3473441e83203f9f5639b39b": {
      "$id": "7",
      "Input": {
        "$id": "8",
        "$type": "Elsa.Activities.Http.Models.HttpRequestModel, Elsa.Activities.Http",
        "path": "/bmi",
        "method": "POST",
        "queryString": {
          "$id": "9"
        },
        "routeValues": {
          "$id": "10",
          "$type": "Microsoft.AspNetCore.Routing.RouteValueDictionary, Microsoft.AspNetCore.Http.Abstractions"
        },
        "headers": {
          "$id": "11",
          "Accept": "*/*",
          "Connection": "keep-alive",
          "Host": "localhost:5298",
          "User-Agent": "PostmanRuntime/7.29.0",
          "Accept-Encoding": "gzip, deflate, br",
          "Content-Type": "application/json",
          "Content-Length": "77",
          "Postman-Token": "bd3cd039-e197-4c7c-96ac-d5d72d157fac"
        },
        "body": {
          "$ref": "5"
        },
        "rawBody": "{\r\n    \"Name\":\"张三\",\r\n    \"Height\":1.75,\r\n    \"Weight\":75,\r\n    \"bmi\":0\r\n}"
      }
    },
    "68d13fe1-40cf-4737-8803-f5400478509a": {
      "$id": "12",
      "Path": "/bmi",
      "Methods": {
        "$type": "System.Collections.Generic.HashSet`1[[System.String, System.Private.CoreLib]], System.Private.CoreLib",
        "$values": [
          "POST"
        ]
      },
      "ReadContent": true,
      "TargetType": null,
      "Schema": "",
      "Authorize": false,
      "Policy": null,
      "Output": {
        "$ref": "8"
      },
      "_Lifecycle": {
        "$id": "13",
        "$type": "Elsa.Models.ActivityLifecycle, Elsa.Core",
        "executing": true,
        "executed": true
      }
    },
    "08ace775-b5e5-48ab-b937-da2caa026448": {
      "$id": "14",
      "VariableName": "mydata",
      "Value": {
        "$ref": "5"
      },
      "_Lifecycle": {
        "$id": "15",
        "$type": "Elsa.Models.ActivityLifecycle, Elsa.Core",
        "executing": true,
        "executed": true
      }
    },
    "80987150-1b9c-4879-8d33-6f16f78332f8": {
      "$id": "16",
      "Script": "mydata.bmi=mydata.Weight/mydata.Height/mydata.Height",
      "PossibleOutcomes": {
        "$type": "System.Collections.Generic.List`1[[System.String, System.Private.CoreLib]], System.Private.CoreLib",
        "$values": [
          "Done"
        ]
      },
      "Output": null,
      "_Lifecycle": {
        "$id": "17",
        "$type": "Elsa.Models.ActivityLifecycle, Elsa.Core",
        "executing": true,
        "executed": true
      }
    }
  },
  "metadata": {
    "$id": "18"
  },
  "blockingActivities": [],
  "scheduledActivities": [],
  "scopes": [],
  "fault": {
    "$id": "19",
    "exception": {
      "$id": "20",
      "type": "System.InvalidCastException, mscorlib",
      "message": "Invalid cast from ''System.Double'' to ''Newtonsoft.Json.Linq.JToken''.",
      "stackTrace": "   at System.Convert.DefaultToType(IConvertible value, Type targetType, IFormatProvider provider)\r\n   at System.Double.System.IConvertible.ToType(Type type, IFormatProvider provider)\r\n   at Jint.Runtime.Interop.DefaultTypeConverter.Convert(Object value, Type type, IFormatProvider formatProvider)\r\n   at Jint.Runtime.Interop.Reflection.ReflectionAccessor.ConvertValueToSet(Engine engine, Object value)\r\n   at Jint.Runtime.Interop.Reflection.ReflectionAccessor.SetValue(Engine engine, Object target, JsValue value)\r\n   at Jint.Runtime.Interop.ObjectWrapper.Set(JsValue property, JsValue value, JsValue receiver)\r\n   at Jint.Engine.PutValue(Reference reference, JsValue value)\r\n   at Jint.Runtime.Interpreter.Expressions.JintAssignmentExpression.SimpleAssignmentExpression.SetValue(EvaluationContext context)\r\n   at Jint.Runtime.Interpreter.Expressions.JintAssignmentExpression.SimpleAssignmentExpression.EvaluateInternal(EvaluationContext context)\r\n   at Jint.Runtime.Interpreter.Statements.JintExpressionStatement.ExecuteInternal(EvaluationContext context)\r\n   at Jint.Runtime.Interpreter.JintStatementList.Execute(EvaluationContext context)\r\n   at Jint.Engine.<>c__DisplayClass65_0.<Execute>g__DoInvoke|0()\r\n   at Jint.Engine.ExecuteWithConstraints[T](Func`1 callback)\r\n   at Jint.Engine.Execute(Script script)\r\n   at Jint.Engine.Execute(String source, ParserOptions parserOptions)\r\n   at Jint.Engine.Evaluate(String source)\r\n   at Elsa.Scripting.JavaScript.Services.JintJavaScriptEvaluator.ExecuteExpressionAndGetResult(Engine engine, String expression)\r\n   at Elsa.Scripting.JavaScript.Services.JintJavaScriptEvaluator.EvaluateAsync(String expression, Type returnType, ActivityExecutionContext context, Action`1 configureEngine, CancellationToken cancellationToken)\r\n   at Elsa.Activities.JavaScript.RunJavaScript.OnExecuteAsync(ActivityExecutionContext context)\r\n   at Elsa.Services.Workflows.WorkflowRunner.TryExecuteActivityAsync(ActivityOperation activityOperation, ActivityExecutionContext activityExecutionContext, IActivity activity, CancellationToken cancellationToken)",
      "data": {
        "$id": "21",
        "$type": "System.Collections.ListDictionaryInternal, System.Private.CoreLib"
      }
    },
    "message": "Invalid cast from ''System.Double'' to ''Newtonsoft.Json.Linq.JToken''.",
    "faultedActivityId": "80987150-1b9c-4879-8d33-6f16f78332f8",
    "activityInput": {
      "$ref": "8"
    },
    "resuming": false
  }
}',
                                  'd2c6193b3473441e83203f9f5639b39b',
                                  '2022-06-07 01:06:55.1427004',
                                  NULL,
                                  '80987150-1b9c-4879-8d33-6f16f78332f8',
                                  '2022-06-07 01:06:55.0847167',
                                  NULL,
                                  NULL,
                                  5,
                                  4,
                                  '7974f69415bb4d62ac04482b3d8d5c73'
                              );

INSERT INTO WorkflowInstances (
                                  Id,
                                  CancelledAt,
                                  ContextId,
                                  ContextType,
                                  CorrelationId,
                                  CreatedAt,
                                  Data,
                                  DefinitionId,
                                  FaultedAt,
                                  FinishedAt,
                                  LastExecutedActivityId,
                                  LastExecutedAt,
                                  Name,
                                  TenantId,
                                  Version,
                                  WorkflowStatus,
                                  DefinitionVersionId
                              )
                              VALUES (
                                  '0ce9fac2dc3a475bb284c6daf141e9ec',
                                  NULL,
                                  NULL,
                                  NULL,
                                  '8f6e5c83d8ef45a5869e9c66683538fc',
                                  '2022-06-07 01:09:52.8037958',
                                  '{
  "$id": "1",
  "input": {
    "$id": "2",
    "providerName": "WorkflowInstance"
  },
  "output": {
    "$id": "3",
    "activityId": "80987150-1b9c-4879-8d33-6f16f78332f8"
  },
  "variables": {
    "$id": "4",
    "data": {
      "mydata": {
        "$id": "5",
        "$type": "System.Dynamic.ExpandoObject, System.Linq.Expressions",
        "Name": "张三",
        "Height": 1.75,
        "Weight": 75,
        "bmi": 0
      },
      "bmi": 24.489795918367346
    }
  },
  "activityData": {
    "$id": "6",
    "d2c6193b3473441e83203f9f5639b39b": {
      "$id": "7",
      "Input": {
        "$id": "8",
        "$type": "Elsa.Activities.Http.Models.HttpRequestModel, Elsa.Activities.Http",
        "path": "/bmi",
        "method": "POST",
        "queryString": {
          "$id": "9"
        },
        "routeValues": {
          "$id": "10",
          "$type": "Microsoft.AspNetCore.Routing.RouteValueDictionary, Microsoft.AspNetCore.Http.Abstractions"
        },
        "headers": {
          "$id": "11",
          "Accept": "*/*",
          "Connection": "keep-alive",
          "Host": "localhost:5298",
          "User-Agent": "PostmanRuntime/7.29.0",
          "Accept-Encoding": "gzip, deflate, br",
          "Content-Type": "application/json",
          "Content-Length": "77",
          "Postman-Token": "f9daa29c-1d97-4d7f-9fde-f5538f2ce63c"
        },
        "body": {
          "$ref": "5"
        },
        "rawBody": "{\r\n    \"Name\":\"张三\",\r\n    \"Height\":1.75,\r\n    \"Weight\":75,\r\n    \"bmi\":0\r\n}"
      }
    },
    "68d13fe1-40cf-4737-8803-f5400478509a": {
      "$id": "12",
      "Path": "/bmi",
      "Methods": {
        "$type": "System.Collections.Generic.HashSet`1[[System.String, System.Private.CoreLib]], System.Private.CoreLib",
        "$values": [
          "POST"
        ]
      },
      "ReadContent": true,
      "TargetType": null,
      "Schema": "",
      "Authorize": false,
      "Policy": null,
      "Output": {
        "$ref": "8"
      },
      "_Lifecycle": {
        "$id": "13",
        "$type": "Elsa.Models.ActivityLifecycle, Elsa.Core",
        "executing": true,
        "executed": true
      }
    },
    "08ace775-b5e5-48ab-b937-da2caa026448": {
      "$id": "14",
      "VariableName": "mydata",
      "Value": {
        "$ref": "5"
      },
      "_Lifecycle": {
        "$id": "15",
        "$type": "Elsa.Models.ActivityLifecycle, Elsa.Core",
        "executing": true,
        "executed": true
      }
    },
    "80987150-1b9c-4879-8d33-6f16f78332f8": {
      "$id": "16",
      "Script": "setVariable(\"bmi\",mydata.Weight/mydata.Height/mydata.Height)",
      "PossibleOutcomes": {
        "$type": "System.Collections.Generic.List`1[[System.String, System.Private.CoreLib]], System.Private.CoreLib",
        "$values": [
          "Done"
        ]
      },
      "Output": null,
      "_Lifecycle": {
        "$id": "17",
        "$type": "Elsa.Models.ActivityLifecycle, Elsa.Core",
        "executing": true,
        "executed": true
      }
    },
    "cf812a65-140d-47a1-8c08-3bf8706106b0": {
      "$id": "18",
      "StatusCode": "OK",
      "Content": "Data Received &#x5F20;&#x4E09; 1.75 75 24.4897959183673",
      "ContentType": "text/html",
      "CharSet": "utf-8",
      "ResponseHeaders": null,
      "_Lifecycle": {
        "$id": "19",
        "$type": "Elsa.Models.ActivityLifecycle, Elsa.Core",
        "executing": true,
        "executed": true
      }
    }
  },
  "metadata": {
    "$id": "20"
  },
  "blockingActivities": [],
  "scheduledActivities": [],
  "scopes": []
}',
                                  'd2c6193b3473441e83203f9f5639b39b',
                                  NULL,
                                  '2022-06-07 01:09:52.9016101',
                                  'cf812a65-140d-47a1-8c08-3bf8706106b0',
                                  '2022-06-07 01:09:52.9016004',
                                  NULL,
                                  NULL,
                                  6,
                                  2,
                                  '7f45ce8560b5448194fd68eebb918bf6'
                              );

INSERT INTO WorkflowInstances (
                                  Id,
                                  CancelledAt,
                                  ContextId,
                                  ContextType,
                                  CorrelationId,
                                  CreatedAt,
                                  Data,
                                  DefinitionId,
                                  FaultedAt,
                                  FinishedAt,
                                  LastExecutedActivityId,
                                  LastExecutedAt,
                                  Name,
                                  TenantId,
                                  Version,
                                  WorkflowStatus,
                                  DefinitionVersionId
                              )
                              VALUES (
                                  'ee3427cb82b34225b0de142e9681252c',
                                  NULL,
                                  NULL,
                                  NULL,
                                  'e7982ad1c1f4440ca5a85e2643adb262',
                                  '2022-06-07 01:10:02.9147386',
                                  '{
  "$id": "1",
  "input": {
    "$id": "2",
    "providerName": "WorkflowInstance"
  },
  "output": {
    "$id": "3",
    "activityId": "80987150-1b9c-4879-8d33-6f16f78332f8"
  },
  "variables": {
    "$id": "4",
    "data": {
      "mydata": {
        "$id": "5",
        "$type": "System.Dynamic.ExpandoObject, System.Linq.Expressions",
        "Name": "张三",
        "Height": 1.75,
        "Weight": 75
      },
      "bmi": 24.489795918367346
    }
  },
  "activityData": {
    "$id": "6",
    "d2c6193b3473441e83203f9f5639b39b": {
      "$id": "7",
      "Input": {
        "$id": "8",
        "$type": "Elsa.Activities.Http.Models.HttpRequestModel, Elsa.Activities.Http",
        "path": "/bmi",
        "method": "POST",
        "queryString": {
          "$id": "9"
        },
        "routeValues": {
          "$id": "10",
          "$type": "Microsoft.AspNetCore.Routing.RouteValueDictionary, Microsoft.AspNetCore.Http.Abstractions"
        },
        "headers": {
          "$id": "11",
          "Accept": "*/*",
          "Connection": "keep-alive",
          "Host": "localhost:5298",
          "User-Agent": "PostmanRuntime/7.29.0",
          "Accept-Encoding": "gzip, deflate, br",
          "Content-Type": "application/json",
          "Content-Length": "63",
          "Postman-Token": "3c5eae94-169d-4b18-b48f-f3988ac530a8"
        },
        "body": {
          "$ref": "5"
        },
        "rawBody": "{\r\n    \"Name\":\"张三\",\r\n    \"Height\":1.75,\r\n    \"Weight\":75\r\n}"
      }
    },
    "68d13fe1-40cf-4737-8803-f5400478509a": {
      "$id": "12",
      "Path": "/bmi",
      "Methods": {
        "$type": "System.Collections.Generic.HashSet`1[[System.String, System.Private.CoreLib]], System.Private.CoreLib",
        "$values": [
          "POST"
        ]
      },
      "ReadContent": true,
      "TargetType": null,
      "Schema": "",
      "Authorize": false,
      "Policy": null,
      "Output": {
        "$ref": "8"
      },
      "_Lifecycle": {
        "$id": "13",
        "$type": "Elsa.Models.ActivityLifecycle, Elsa.Core",
        "executing": true,
        "executed": true
      }
    },
    "08ace775-b5e5-48ab-b937-da2caa026448": {
      "$id": "14",
      "VariableName": "mydata",
      "Value": {
        "$ref": "5"
      },
      "_Lifecycle": {
        "$id": "15",
        "$type": "Elsa.Models.ActivityLifecycle, Elsa.Core",
        "executing": true,
        "executed": true
      }
    },
    "80987150-1b9c-4879-8d33-6f16f78332f8": {
      "$id": "16",
      "Script": "setVariable(\"bmi\",mydata.Weight/mydata.Height/mydata.Height)",
      "PossibleOutcomes": {
        "$type": "System.Collections.Generic.List`1[[System.String, System.Private.CoreLib]], System.Private.CoreLib",
        "$values": [
          "Done"
        ]
      },
      "Output": null,
      "_Lifecycle": {
        "$id": "17",
        "$type": "Elsa.Models.ActivityLifecycle, Elsa.Core",
        "executing": true,
        "executed": true
      }
    },
    "cf812a65-140d-47a1-8c08-3bf8706106b0": {
      "$id": "18",
      "StatusCode": "OK",
      "Content": "Data Received &#x5F20;&#x4E09; 1.75 75 24.4897959183673",
      "ContentType": "text/html",
      "CharSet": "utf-8",
      "ResponseHeaders": null,
      "_Lifecycle": {
        "$id": "19",
        "$type": "Elsa.Models.ActivityLifecycle, Elsa.Core",
        "executing": true,
        "executed": true
      }
    }
  },
  "metadata": {
    "$id": "20"
  },
  "blockingActivities": [],
  "scheduledActivities": [],
  "scopes": []
}',
                                  'd2c6193b3473441e83203f9f5639b39b',
                                  NULL,
                                  '2022-06-07 01:10:03.0395904',
                                  'cf812a65-140d-47a1-8c08-3bf8706106b0',
                                  '2022-06-07 01:10:03.0395854',
                                  NULL,
                                  NULL,
                                  6,
                                  2,
                                  '7f45ce8560b5448194fd68eebb918bf6'
                              );

INSERT INTO WorkflowInstances (
                                  Id,
                                  CancelledAt,
                                  ContextId,
                                  ContextType,
                                  CorrelationId,
                                  CreatedAt,
                                  Data,
                                  DefinitionId,
                                  FaultedAt,
                                  FinishedAt,
                                  LastExecutedActivityId,
                                  LastExecutedAt,
                                  Name,
                                  TenantId,
                                  Version,
                                  WorkflowStatus,
                                  DefinitionVersionId
                              )
                              VALUES (
                                  '33046df735b2447da983e6f19a5117ae',
                                  NULL,
                                  NULL,
                                  NULL,
                                  '0b2eb542c7a44ddd87e97686c2daff2e',
                                  '2022-06-07 06:51:48.3066971',
                                  '{
  "$id": "1",
  "input": {
    "$id": "2",
    "providerName": "WorkflowInstance"
  },
  "output": {
    "$id": "3",
    "activityId": "10dee174-36ce-45b5-a99b-2112c160cc8c"
  },
  "variables": {
    "$id": "4",
    "data": {
      "mydata": "{\r\n    \"Name\":\"张三\",\r\n    \"Days\":3,\r\n    \"Reason\":\"休息\"\r\n}\r\n"
    }
  },
  "activityData": {
    "$id": "5",
    "539d52828fdf4cf290920ea4313dacb7": {
      "$id": "6",
      "Input": {
        "$id": "7",
        "$type": "Elsa.Activities.Http.Models.HttpRequestModel, Elsa.Activities.Http",
        "path": "/LeaveApprove",
        "method": "POST",
        "queryString": {
          "$id": "8"
        },
        "routeValues": {
          "$id": "9",
          "$type": "Microsoft.AspNetCore.Routing.RouteValueDictionary, Microsoft.AspNetCore.Http.Abstractions"
        },
        "headers": {
          "$id": "10",
          "Accept": "*/*",
          "Connection": "keep-alive",
          "Host": "localhost:5298",
          "User-Agent": "PostmanRuntime/7.29.0",
          "Accept-Encoding": "gzip, deflate, br",
          "Content-Type": "text/plain",
          "Content-Length": "66",
          "Postman-Token": "2a60e0a2-c2b8-441b-a1c4-ff24427a56c2"
        },
        "body": "{\r\n    \"Name\":\"张三\",\r\n    \"Days\":3,\r\n    \"Reason\":\"休息\"\r\n}\r\n",
        "rawBody": "{\r\n    \"Name\":\"张三\",\r\n    \"Days\":3,\r\n    \"Reason\":\"休息\"\r\n}\r\n"
      }
    },
    "55da7374-13ea-49e2-8099-9e7e2513e8a2": {
      "$id": "11",
      "Path": "/leaveapprove",
      "Methods": {
        "$type": "System.Collections.Generic.HashSet`1[[System.String, System.Private.CoreLib]], System.Private.CoreLib",
        "$values": [
          "POST"
        ]
      },
      "ReadContent": true,
      "TargetType": null,
      "Schema": "",
      "Authorize": false,
      "Policy": null,
      "Output": {
        "$ref": "7"
      },
      "_Lifecycle": {
        "$id": "12",
        "$type": "Elsa.Models.ActivityLifecycle, Elsa.Core",
        "executing": true,
        "executed": true
      }
    },
    "a88a6e9c-42b6-4709-b6c7-24c947d0a05e": {
      "$id": "13",
      "VariableName": "mydata",
      "Value": "{\r\n    \"Name\":\"张三\",\r\n    \"Days\":3,\r\n    \"Reason\":\"休息\"\r\n}\r\n",
      "_Lifecycle": {
        "$id": "14",
        "$type": "Elsa.Models.ActivityLifecycle, Elsa.Core",
        "executing": true,
        "executed": true
      }
    },
    "dac9fadd-0ed9-49a3-962e-f96939f7ba6e": {
      "$id": "15",
      "Branches": {
        "$type": "System.Collections.Generic.HashSet`1[[System.String, System.Private.CoreLib]], System.Private.CoreLib",
        "$values": [
          "approve",
          "reject"
        ]
      },
      "_Lifecycle": {
        "$id": "16",
        "$type": "Elsa.Models.ActivityLifecycle, Elsa.Core",
        "executing": true,
        "executed": true
      }
    },
    "32d7eef9-1b28-4881-a3aa-923106f91291": {
      "$id": "17",
      "Signal": "approve",
      "SignalInput": null,
      "Output": null,
      "_Lifecycle": {
        "$id": "18",
        "$type": "Elsa.Models.ActivityLifecycle, Elsa.Core",
        "executing": true,
        "executed": true
      }
    },
    "10dee174-36ce-45b5-a99b-2112c160cc8c": {
      "$id": "19",
      "Signal": "reject",
      "SignalInput": null,
      "Output": null,
      "_Lifecycle": {
        "$id": "20",
        "$type": "Elsa.Models.ActivityLifecycle, Elsa.Core",
        "executing": true,
        "executed": true
      }
    }
  },
  "metadata": {
    "$id": "21"
  },
  "blockingActivities": [
    {
      "$id": "22",
      "activityId": "32d7eef9-1b28-4881-a3aa-923106f91291",
      "activityType": "SignalReceived"
    },
    {
      "$id": "23",
      "activityId": "10dee174-36ce-45b5-a99b-2112c160cc8c",
      "activityType": "SignalReceived"
    }
  ],
  "scheduledActivities": [],
  "scopes": []
}',
                                  '539d52828fdf4cf290920ea4313dacb7',
                                  NULL,
                                  NULL,
                                  '10dee174-36ce-45b5-a99b-2112c160cc8c',
                                  '2022-06-07 06:51:48.406872',
                                  NULL,
                                  NULL,
                                  1,
                                  3,
                                  '0f92606335434a1fa5ed631c9fb027b0'
                              );

INSERT INTO WorkflowInstances (
                                  Id,
                                  CancelledAt,
                                  ContextId,
                                  ContextType,
                                  CorrelationId,
                                  CreatedAt,
                                  Data,
                                  DefinitionId,
                                  FaultedAt,
                                  FinishedAt,
                                  LastExecutedActivityId,
                                  LastExecutedAt,
                                  Name,
                                  TenantId,
                                  Version,
                                  WorkflowStatus,
                                  DefinitionVersionId
                              )
                              VALUES (
                                  'b2b27f95c9ab4441adcc6355310e8b26',
                                  NULL,
                                  NULL,
                                  NULL,
                                  'd4d398024bc043c284462ce907128d6a',
                                  '2022-06-07 07:29:22.1202149',
                                  '{
  "$id": "1",
  "input": {
    "$id": "2",
    "providerName": "WorkflowInstance"
  },
  "output": {
    "$id": "3",
    "activityId": "55da7374-13ea-49e2-8099-9e7e2513e8a2"
  },
  "variables": {
    "$id": "4",
    "data": {
      "mydata": "{\r\n    \"Name\":\"张三\",\r\n    \"Days\":3,\r\n    \"Reason\":\"休息\"\r\n}\r\n"
    }
  },
  "activityData": {
    "$id": "5",
    "539d52828fdf4cf290920ea4313dacb7": {
      "$id": "6",
      "Input": {
        "$id": "7",
        "$type": "Elsa.Activities.Http.Models.HttpRequestModel, Elsa.Activities.Http",
        "path": "/LeaveApprove",
        "method": "POST",
        "queryString": {
          "$id": "8"
        },
        "routeValues": {
          "$id": "9",
          "$type": "Microsoft.AspNetCore.Routing.RouteValueDictionary, Microsoft.AspNetCore.Http.Abstractions"
        },
        "headers": {
          "$id": "10",
          "Accept": "*/*",
          "Connection": "keep-alive",
          "Host": "localhost:5298",
          "User-Agent": "PostmanRuntime/7.29.0",
          "Accept-Encoding": "gzip, deflate, br",
          "Content-Type": "text/plain",
          "Content-Length": "66",
          "Postman-Token": "12b6ea31-0189-446f-abc7-2b1ba6a65181"
        },
        "body": "{\r\n    \"Name\":\"张三\",\r\n    \"Days\":3,\r\n    \"Reason\":\"休息\"\r\n}\r\n",
        "rawBody": "{\r\n    \"Name\":\"张三\",\r\n    \"Days\":3,\r\n    \"Reason\":\"休息\"\r\n}\r\n"
      }
    },
    "55da7374-13ea-49e2-8099-9e7e2513e8a2": {
      "$id": "11",
      "Path": "/leaveapprove",
      "Methods": {
        "$type": "System.Collections.Generic.HashSet`1[[System.String, System.Private.CoreLib]], System.Private.CoreLib",
        "$values": [
          "POST"
        ]
      },
      "ReadContent": true,
      "TargetType": null,
      "Schema": "",
      "Authorize": false,
      "Policy": null,
      "Output": {
        "$ref": "7"
      },
      "_Lifecycle": {
        "$id": "12",
        "$type": "Elsa.Models.ActivityLifecycle, Elsa.Core",
        "executing": true,
        "executed": true
      }
    },
    "a88a6e9c-42b6-4709-b6c7-24c947d0a05e": {
      "$id": "13",
      "VariableName": "mydata",
      "Value": "{\r\n    \"Name\":\"张三\",\r\n    \"Days\":3,\r\n    \"Reason\":\"休息\"\r\n}\r\n",
      "_Lifecycle": {
        "$id": "14",
        "$type": "Elsa.Models.ActivityLifecycle, Elsa.Core",
        "executing": true,
        "executed": true
      }
    },
    "94e88ab3-507a-44c2-9147-528b25187649": {
      "$id": "15"
    }
  },
  "metadata": {
    "$id": "16"
  },
  "blockingActivities": [],
  "scheduledActivities": [],
  "scopes": [],
  "fault": {
    "$id": "17",
    "exception": {
      "$id": "18",
      "type": "Elsa.Exceptions.CannotSetActivityPropertyValueException, Elsa.Abstractions",
      "message": "An exception was thrown whilst setting ''WriteHttpResponse.Content''. See the inner exception for further details.",
      "stackTrace": "   at Elsa.Services.ActivityPropertyProviders.SetActivityPropertiesAsync(IActivity activity, ActivityExecutionContext activityExecutionContext, CancellationToken cancellationToken)\r\n   at Elsa.Services.Workflows.ActivityActivator.ActivateActivityAsync(ActivityExecutionContext context, Type type, CancellationToken cancellationToken)\r\n   at Elsa.Providers.ActivityTypes.TypeBasedActivityProvider.<>c__DisplayClass6_0.<<CreateActivityTypeAsync>b__0>d.MoveNext()\r\n--- End of stack trace from previous location ---\r\n   at Elsa.Services.Workflows.WorkflowRunner.RunCoreAsync(WorkflowExecutionContext workflowExecutionContext, ActivityOperation activityOperation, CancellationToken cancellationToken)\r\n   at Elsa.Services.Workflows.WorkflowRunner.RunCoreAsync(WorkflowExecutionContext workflowExecutionContext, ActivityOperation activityOperation, CancellationToken cancellationToken)\r\n   at Elsa.Services.Workflows.WorkflowRunner.BeginWorkflow(WorkflowExecutionContext workflowExecutionContext, IActivityBlueprint activity, CancellationToken cancellationToken)",
      "innerException": {
        "$id": "19",
        "type": "Elsa.Exceptions.ExpressionEvaluationException, Elsa.Core",
        "message": "Failed to evaluate expression",
        "stackTrace": "   at Elsa.Expressions.ExpressionEvaluator.EvaluateAsync(String expression, String syntax, Type returnType, ActivityExecutionContext context, CancellationToken cancellationToken)\r\n   at Elsa.Services.Workflows.ExpressionActivityPropertyValueProvider.GetValueAsync(ActivityExecutionContext context, CancellationToken cancellationToken)\r\n   at Elsa.Services.ActivityPropertyProviders.SetActivityPropertiesAsync(IActivity activity, ActivityExecutionContext activityExecutionContext, CancellationToken cancellationToken)",
        "innerException": {
          "$id": "20",
          "type": "System.Exception, mscorlib",
          "message": "There was no base URL configured, which means no absolute URL can be generated from outside the context of an HTTP request. Please make sure that `HttpActivityOptions` is configured correctly. The configuration key used in most Elsa samples is usually: \"Elsa:Server:BaseUrl\"",
          "stackTrace": "   at Elsa.Activities.Http.Services.DefaultAbsoluteUrlProvider.ToAbsoluteUrl(String relativePath)\r\n   at Elsa.Activities.Http.Extensions.ActivityExecutionContextExtensions.GenerateSignalUrl(ActivityExecutionContext context, String signal)\r\n   at Elsa.Activities.Http.Scripting.Liquid.SignalUrlFilter.ProcessAsync(FluidValue input, FilterArguments arguments, TemplateContext context)\r\n   at Elsa.Scripting.Liquid.Extensions.TemplateContextExtensions.<>c__DisplayClass0_1.<AddFilters>b__0(FluidValue input, FilterArguments arguments, TemplateContext ctx)\r\n   at Fluid.Ast.FilterExpression.EvaluateAsync(TemplateContext context)\r\n   at Fluid.Ast.OutputStatement.<WriteToAsync>g__Awaited|7_0(ValueTask`1 t, TextWriter w, TextEncoder enc, TemplateContext ctx)\r\n   at Fluid.Parser.FluidTemplate.Awaited(ValueTask`1 task, TextWriter writer, TextEncoder encoder, TemplateContext context, IReadOnlyList`1 statements, Int32 startIndex)\r\n   at Fluid.FluidTemplateExtensions.RenderAsync(IFluidTemplate template, TemplateContext context, TextEncoder encoder)\r\n   at Elsa.Scripting.Liquid.Services.LiquidTemplateManager.RenderAsync(String source, TemplateContext context, TextEncoder encoder)\r\n   at Elsa.Scripting.Liquid.Services.LiquidHandler.EvaluateAsync(String expression, Type returnType, ActivityExecutionContext context, CancellationToken cancellationToken)\r\n   at Elsa.Expressions.ExpressionEvaluator.EvaluateAsync(String expression, String syntax, Type returnType, ActivityExecutionContext context, CancellationToken cancellationToken)",
          "data": {
            "$id": "21",
            "$type": "System.Collections.ListDictionaryInternal, System.Private.CoreLib"
          }
        },
        "data": {
          "$id": "22",
          "$type": "System.Collections.ListDictionaryInternal, System.Private.CoreLib",
          "Expression": "approve: {{ \"Approve\" | signal_url }} \r\nreject: {{ \"Reject\" | signal_url }}",
          "Syntax": "Liquid"
        }
      },
      "data": {
        "$id": "23",
        "$type": "System.Collections.ListDictionaryInternal, System.Private.CoreLib"
      }
    },
    "message": "An exception was thrown whilst setting ''WriteHttpResponse.Content''. See the inner exception for further details.",
    "faultedActivityId": "55da7374-13ea-49e2-8099-9e7e2513e8a2",
    "resuming": false
  },
  "currentActivity": {
    "$id": "24",
    "activityId": "94e88ab3-507a-44c2-9147-528b25187649"
  }
}',
                                  '539d52828fdf4cf290920ea4313dacb7',
                                  '2022-06-07 07:29:22.929898',
                                  NULL,
                                  'a88a6e9c-42b6-4709-b6c7-24c947d0a05e',
                                  '2022-06-07 07:29:22.8726162',
                                  NULL,
                                  NULL,
                                  2,
                                  4,
                                  '360242e8bca843f7a310b462a53dea6d'
                              );

INSERT INTO WorkflowInstances (
                                  Id,
                                  CancelledAt,
                                  ContextId,
                                  ContextType,
                                  CorrelationId,
                                  CreatedAt,
                                  Data,
                                  DefinitionId,
                                  FaultedAt,
                                  FinishedAt,
                                  LastExecutedActivityId,
                                  LastExecutedAt,
                                  Name,
                                  TenantId,
                                  Version,
                                  WorkflowStatus,
                                  DefinitionVersionId
                              )
                              VALUES (
                                  'b17de772b948446698ca8c38fdcba3f4',
                                  NULL,
                                  NULL,
                                  NULL,
                                  '6255782f18d546af904461d1a0fa6afb',
                                  '2022-06-07 07:31:09.8374502',
                                  '{
  "$id": "1",
  "input": {
    "$id": "2",
    "providerName": "WorkflowInstance"
  },
  "output": {
    "$id": "3",
    "activityId": "32d7eef9-1b28-4881-a3aa-923106f91291"
  },
  "variables": {
    "$id": "4",
    "data": {
      "mydata": "{\r\n    \"Name\":\"张三\",\r\n    \"Days\":3,\r\n    \"Reason\":\"休息\"\r\n}\r\n",
      "IsApproved": true
    }
  },
  "activityData": {
    "$id": "5",
    "539d52828fdf4cf290920ea4313dacb7": {
      "$id": "6",
      "Input": {
        "$id": "7",
        "$type": "Elsa.Activities.Signaling.Models.Signal, Elsa.Core",
        "signalName": "approve"
      }
    },
    "55da7374-13ea-49e2-8099-9e7e2513e8a2": {
      "$id": "8",
      "Path": "/leaveapprove",
      "Methods": {
        "$type": "System.Collections.Generic.HashSet`1[[System.String, System.Private.CoreLib]], System.Private.CoreLib",
        "$values": [
          "POST"
        ]
      },
      "ReadContent": true,
      "TargetType": null,
      "Schema": "",
      "Authorize": false,
      "Policy": null,
      "Output": {
        "$id": "9",
        "$type": "Elsa.Activities.Http.Models.HttpRequestModel, Elsa.Activities.Http",
        "path": "/LeaveApprove",
        "method": "POST",
        "queryString": {
          "$id": "10"
        },
        "routeValues": {
          "$id": "11",
          "$type": "Microsoft.AspNetCore.Routing.RouteValueDictionary, Microsoft.AspNetCore.Http.Abstractions"
        },
        "headers": {
          "$id": "12",
          "Accept": "*/*",
          "Connection": "keep-alive",
          "Host": "localhost:5298",
          "User-Agent": "PostmanRuntime/7.29.0",
          "Accept-Encoding": "gzip, deflate, br",
          "Content-Type": "text/plain",
          "Content-Length": "66",
          "Postman-Token": "fb6b9a62-6955-4f36-bc3d-618f0804dc4e"
        },
        "body": "{\r\n    \"Name\":\"张三\",\r\n    \"Days\":3,\r\n    \"Reason\":\"休息\"\r\n}\r\n",
        "rawBody": "{\r\n    \"Name\":\"张三\",\r\n    \"Days\":3,\r\n    \"Reason\":\"休息\"\r\n}\r\n"
      },
      "_Lifecycle": {
        "$id": "13",
        "$type": "Elsa.Models.ActivityLifecycle, Elsa.Core",
        "executing": true,
        "executed": true
      }
    },
    "a88a6e9c-42b6-4709-b6c7-24c947d0a05e": {
      "$id": "14",
      "VariableName": "mydata",
      "Value": "{\r\n    \"Name\":\"张三\",\r\n    \"Days\":3,\r\n    \"Reason\":\"休息\"\r\n}\r\n",
      "_Lifecycle": {
        "$id": "15",
        "$type": "Elsa.Models.ActivityLifecycle, Elsa.Core",
        "executing": true,
        "executed": true
      }
    },
    "94e88ab3-507a-44c2-9147-528b25187649": {
      "$id": "16",
      "StatusCode": "OK",
      "Content": "approve: http://localhost:5298/signals/trigger/CfDJ8NYOXSkV3ExNpFDluQX96EL7p4vY58ZENdFUhtk4FjORS59H_6LjOYvClAzFy7RPqtba-0z8muA62x2JA8QMOhWEAVoKJvpHDyhTv1Qx-1MVz9jpa3qHC2qvwYkA5fi6bndu2fZJrOPhsQmhYfIUwtxW3Rk9gZjnex-Vm3Folbzns1Xu1VbNYcc_2gMEuWJDS_Nm8WLOcvNUlHBUEBp4keI \r\nreject: http://localhost:5298/signals/trigger/CfDJ8NYOXSkV3ExNpFDluQX96ELSmJmTOmaOBMBySAUW8k9nI_ff_hOD92uG6ezSuh9UVIeKWxQH5NjQ1bLexz8z2yNfxrE1v2AkvxAOp3ZA9fiS683IcaTVS9One2HYBcJqhsk8kJQjA06mooB-r7PgkPUzd9N16SlLClev7hTUEmDZxwlE8SVMIj3JbGUHa7QbTTnmyZ66NTm_TwsQ5RO5qRE",
      "ContentType": "text/plain",
      "CharSet": "utf-8",
      "ResponseHeaders": null,
      "_Lifecycle": {
        "$id": "17",
        "$type": "Elsa.Models.ActivityLifecycle, Elsa.Core",
        "executing": true,
        "executed": true
      }
    },
    "dac9fadd-0ed9-49a3-962e-f96939f7ba6e": {
      "$id": "18",
      "Branches": {
        "$type": "System.Collections.Generic.HashSet`1[[System.String, System.Private.CoreLib]], System.Private.CoreLib",
        "$values": [
          "approve",
          "reject"
        ]
      },
      "_Lifecycle": {
        "$id": "19",
        "$type": "Elsa.Models.ActivityLifecycle, Elsa.Core",
        "executing": true,
        "executed": true
      }
    },
    "32d7eef9-1b28-4881-a3aa-923106f91291": {
      "$id": "20",
      "Signal": "Approve",
      "SignalInput": null,
      "Output": null,
      "_Lifecycle": {
        "$id": "21",
        "$type": "Elsa.Models.ActivityLifecycle, Elsa.Core",
        "executing": true,
        "executed": true
      }
    },
    "10dee174-36ce-45b5-a99b-2112c160cc8c": {
      "$id": "22",
      "Signal": "Reject",
      "SignalInput": null,
      "Output": null,
      "_Lifecycle": {
        "$id": "23",
        "$type": "Elsa.Models.ActivityLifecycle, Elsa.Core",
        "executing": true,
        "executed": true
      }
    },
    "bc966760-e353-49ae-9bdd-bae1da6cf906": {
      "$id": "24",
      "VariableName": "IsApproved",
      "Value": true,
      "_Lifecycle": {
        "$id": "25",
        "$type": "Elsa.Models.ActivityLifecycle, Elsa.Core",
        "executing": true,
        "executed": true
      }
    },
    "3c9ca1bb-f817-4b9a-9229-c606f79cae59": {
      "$id": "26",
      "InboundTransitions": {
        "$type": "System.Collections.Generic.List`1[[System.String, System.Private.CoreLib]], System.Private.CoreLib",
        "$values": []
      },
      "Mode": "WaitAny",
      "_Lifecycle": {
        "$id": "27",
        "$type": "Elsa.Models.ActivityLifecycle, Elsa.Core",
        "executing": true,
        "executed": true
      }
    },
    "750f4c01-e799-454f-a640-acde83ee4797": {
      "$id": "28",
      "StatusCode": "OK",
      "Content": "LiquidActivityModel { ActivityExecutionContext = Elsa.Services.Models.ActivityExecutionContext, ActivityName = IsApproved, ActivityId =  }",
      "ContentType": "text/plain",
      "CharSet": "utf-8",
      "ResponseHeaders": null,
      "_Lifecycle": {
        "$id": "29",
        "$type": "Elsa.Models.ActivityLifecycle, Elsa.Core",
        "executing": true,
        "executed": true
      }
    }
  },
  "metadata": {
    "$id": "30"
  },
  "blockingActivities": [],
  "scheduledActivities": [],
  "scopes": []
}',
                                  '539d52828fdf4cf290920ea4313dacb7',
                                  NULL,
                                  '2022-06-07 07:31:29.9756945',
                                  '750f4c01-e799-454f-a640-acde83ee4797',
                                  '2022-06-07 07:31:29.9744235',
                                  NULL,
                                  NULL,
                                  2,
                                  2,
                                  '360242e8bca843f7a310b462a53dea6d'
                              );

INSERT INTO WorkflowInstances (
                                  Id,
                                  CancelledAt,
                                  ContextId,
                                  ContextType,
                                  CorrelationId,
                                  CreatedAt,
                                  Data,
                                  DefinitionId,
                                  FaultedAt,
                                  FinishedAt,
                                  LastExecutedActivityId,
                                  LastExecutedAt,
                                  Name,
                                  TenantId,
                                  Version,
                                  WorkflowStatus,
                                  DefinitionVersionId
                              )
                              VALUES (
                                  '20372dc0bb364c939d6ed4f44771e9ce',
                                  NULL,
                                  NULL,
                                  NULL,
                                  'efb6ca0a95b845d19f957f54fcfc5b84',
                                  '2023-03-15 05:50:08.5727369',
                                  '{
  "$id": "1",
  "input": {
    "$id": "2",
    "providerName": "WorkflowInstance"
  },
  "output": {
    "$id": "3",
    "activityId": "479d5e06-798c-4e7c-9840-369abe48aa6a"
  },
  "variables": {
    "$id": "4",
    "data": {}
  },
  "activityData": {
    "$id": "5",
    "d7a8f96fa2fd420682483b50ea3813a4": {
      "$id": "6",
      "Input": {
        "$id": "7",
        "$type": "Elsa.Activities.Http.Models.HttpRequestModel, Elsa.Activities.Http",
        "path": "/hello-world",
        "method": "GET",
        "queryString": {
          "$id": "8"
        },
        "routeValues": {
          "$id": "9",
          "$type": "Microsoft.AspNetCore.Routing.RouteValueDictionary, Microsoft.AspNetCore.Http.Abstractions"
        },
        "headers": {
          "$id": "10",
          "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9",
          "Connection": "keep-alive",
          "Host": "localhost:5298",
          "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36",
          "Accept-Encoding": "gzip, deflate, br",
          "Accept-Language": "zh-CN,zh;q=0.9",
          "Upgrade-Insecure-Requests": "1",
          "sec-ch-ua": "\" Not A;Brand\";v=\"99\", \"Chromium\";v=\"96\", \"Google Chrome\";v=\"96\"",
          "sec-ch-ua-mobile": "?0",
          "sec-ch-ua-platform": "\"Windows\"",
          "Sec-Fetch-Site": "none",
          "Sec-Fetch-Mode": "navigate",
          "Sec-Fetch-User": "?1",
          "Sec-Fetch-Dest": "document"
        }
      }
    },
    "479d5e06-798c-4e7c-9840-369abe48aa6a": {
      "$id": "11",
      "Path": "/hello-world",
      "Methods": {
        "$type": "System.Collections.Generic.HashSet`1[[System.String, System.Private.CoreLib]], System.Private.CoreLib",
        "$values": [
          "GET"
        ]
      },
      "ReadContent": false,
      "TargetType": null,
      "Schema": "",
      "Authorize": false,
      "Policy": null,
      "Output": {
        "$ref": "7"
      },
      "_Lifecycle": {
        "$id": "12",
        "$type": "Elsa.Models.ActivityLifecycle, Elsa.Core",
        "executing": true,
        "executed": true
      }
    },
    "6e851021-1127-4c07-a1db-15e1659c6da8": {
      "$id": "13",
      "StatusCode": "OK",
      "Content": "<h1>你好</h1>",
      "ContentType": "text/html",
      "CharSet": "utf-8",
      "ResponseHeaders": null,
      "_Lifecycle": {
        "$id": "14",
        "$type": "Elsa.Models.ActivityLifecycle, Elsa.Core",
        "executing": true,
        "executed": true
      }
    }
  },
  "metadata": {
    "$id": "15"
  },
  "blockingActivities": [],
  "scheduledActivities": [],
  "scopes": []
}',
                                  'd7a8f96fa2fd420682483b50ea3813a4',
                                  NULL,
                                  '2023-03-15 05:50:08.67933',
                                  '6e851021-1127-4c07-a1db-15e1659c6da8',
                                  '2023-03-15 05:50:08.6786319',
                                  NULL,
                                  NULL,
                                  1,
                                  2,
                                  'c390d8927f29499b81b55bdc5172ca17'
                              );

INSERT INTO WorkflowInstances (
                                  Id,
                                  CancelledAt,
                                  ContextId,
                                  ContextType,
                                  CorrelationId,
                                  CreatedAt,
                                  Data,
                                  DefinitionId,
                                  FaultedAt,
                                  FinishedAt,
                                  LastExecutedActivityId,
                                  LastExecutedAt,
                                  Name,
                                  TenantId,
                                  Version,
                                  WorkflowStatus,
                                  DefinitionVersionId
                              )
                              VALUES (
                                  '1e0d9e6e198248fcbf5e6735f8c11fb8',
                                  NULL,
                                  NULL,
                                  NULL,
                                  '3e1d9647c7a74f5989061112237466cb',
                                  '2023-03-15 07:22:45.4007244',
                                  '{
  "$id": "1",
  "input": {
    "$id": "2",
    "providerName": "WorkflowInstance"
  },
  "output": {
    "$id": "3",
    "activityId": "479d5e06-798c-4e7c-9840-369abe48aa6a"
  },
  "variables": {
    "$id": "4",
    "data": {}
  },
  "activityData": {
    "$id": "5",
    "d7a8f96fa2fd420682483b50ea3813a4": {
      "$id": "6",
      "Input": {
        "$id": "7",
        "$type": "Elsa.Activities.Http.Models.HttpRequestModel, Elsa.Activities.Http",
        "path": "/hello-world",
        "method": "GET",
        "queryString": {
          "$id": "8"
        },
        "routeValues": {
          "$id": "9",
          "$type": "Microsoft.AspNetCore.Routing.RouteValueDictionary, Microsoft.AspNetCore.Http.Abstractions"
        },
        "headers": {
          "$id": "10",
          "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9",
          "Connection": "keep-alive",
          "Host": "localhost:5298",
          "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36",
          "Accept-Encoding": "gzip, deflate, br",
          "Accept-Language": "zh-CN,zh;q=0.9",
          "Upgrade-Insecure-Requests": "1",
          "sec-ch-ua": "\" Not A;Brand\";v=\"99\", \"Chromium\";v=\"96\", \"Google Chrome\";v=\"96\"",
          "sec-ch-ua-mobile": "?0",
          "sec-ch-ua-platform": "\"Windows\"",
          "Sec-Fetch-Site": "none",
          "Sec-Fetch-Mode": "navigate",
          "Sec-Fetch-User": "?1",
          "Sec-Fetch-Dest": "document"
        }
      }
    },
    "479d5e06-798c-4e7c-9840-369abe48aa6a": {
      "$id": "11",
      "Path": "/hello-world",
      "Methods": {
        "$type": "System.Collections.Generic.HashSet`1[[System.String, System.Private.CoreLib]], System.Private.CoreLib",
        "$values": [
          "GET"
        ]
      },
      "ReadContent": false,
      "TargetType": null,
      "Schema": "",
      "Authorize": false,
      "Policy": null,
      "Output": {
        "$ref": "7"
      },
      "_Lifecycle": {
        "$id": "12",
        "$type": "Elsa.Models.ActivityLifecycle, Elsa.Core",
        "executing": true,
        "executed": true
      }
    },
    "6e851021-1127-4c07-a1db-15e1659c6da8": {
      "$id": "13",
      "StatusCode": "OK",
      "Content": "<h1>你好</h1>",
      "ContentType": "text/html",
      "CharSet": "utf-8",
      "ResponseHeaders": null,
      "_Lifecycle": {
        "$id": "14",
        "$type": "Elsa.Models.ActivityLifecycle, Elsa.Core",
        "executing": true,
        "executed": true
      }
    }
  },
  "metadata": {
    "$id": "15"
  },
  "blockingActivities": [],
  "scheduledActivities": [],
  "scopes": []
}',
                                  'd7a8f96fa2fd420682483b50ea3813a4',
                                  NULL,
                                  '2023-03-15 07:22:45.5433972',
                                  '6e851021-1127-4c07-a1db-15e1659c6da8',
                                  '2023-03-15 07:22:45.5429428',
                                  NULL,
                                  NULL,
                                  1,
                                  2,
                                  'c390d8927f29499b81b55bdc5172ca17'
                              );


-- 索引：IX_Bookmark_ActivityId
CREATE INDEX IF NOT EXISTS IX_Bookmark_ActivityId ON Bookmarks (
    "ActivityId"
);


-- 索引：IX_Bookmark_ActivityType
CREATE INDEX IF NOT EXISTS IX_Bookmark_ActivityType ON Bookmarks (
    "ActivityType"
);


-- 索引：IX_Bookmark_ActivityType_TenantId_Hash
CREATE INDEX IF NOT EXISTS IX_Bookmark_ActivityType_TenantId_Hash ON Bookmarks (
    "ActivityType",
    "TenantId",
    "Hash"
);


-- 索引：IX_Bookmark_CorrelationId
CREATE INDEX IF NOT EXISTS IX_Bookmark_CorrelationId ON Bookmarks (
    "CorrelationId"
);


-- 索引：IX_Bookmark_Hash
CREATE INDEX IF NOT EXISTS IX_Bookmark_Hash ON Bookmarks (
    "Hash"
);


-- 索引：IX_Bookmark_Hash_CorrelationId_TenantId
CREATE INDEX IF NOT EXISTS IX_Bookmark_Hash_CorrelationId_TenantId ON Bookmarks (
    "Hash",
    "CorrelationId",
    "TenantId"
);


-- 索引：IX_Bookmark_TenantId
CREATE INDEX IF NOT EXISTS IX_Bookmark_TenantId ON Bookmarks (
    "TenantId"
);


-- 索引：IX_Bookmark_WorkflowInstanceId
CREATE INDEX IF NOT EXISTS IX_Bookmark_WorkflowInstanceId ON Bookmarks (
    "WorkflowInstanceId"
);


-- 索引：IX_Trigger_ActivityId
CREATE INDEX IF NOT EXISTS IX_Trigger_ActivityId ON Triggers (
    "ActivityId"
);


-- 索引：IX_Trigger_ActivityType
CREATE INDEX IF NOT EXISTS IX_Trigger_ActivityType ON Triggers (
    "ActivityType"
);


-- 索引：IX_Trigger_ActivityType_TenantId_Hash
CREATE INDEX IF NOT EXISTS IX_Trigger_ActivityType_TenantId_Hash ON Triggers (
    "ActivityType",
    "TenantId",
    "Hash"
);


-- 索引：IX_Trigger_Hash
CREATE INDEX IF NOT EXISTS IX_Trigger_Hash ON Triggers (
    "Hash"
);


-- 索引：IX_Trigger_Hash_TenantId
CREATE INDEX IF NOT EXISTS IX_Trigger_Hash_TenantId ON Triggers (
    "Hash",
    "TenantId"
);


-- 索引：IX_Trigger_TenantId
CREATE INDEX IF NOT EXISTS IX_Trigger_TenantId ON Triggers (
    "TenantId"
);


-- 索引：IX_Trigger_WorkflowDefinitionId
CREATE INDEX IF NOT EXISTS IX_Trigger_WorkflowDefinitionId ON Triggers (
    "WorkflowDefinitionId"
);


-- 索引：IX_WorkflowDefinition_DefinitionId_VersionId
CREATE UNIQUE INDEX IF NOT EXISTS IX_WorkflowDefinition_DefinitionId_VersionId ON WorkflowDefinitions (
    "DefinitionId",
    "Version"
);


-- 索引：IX_WorkflowDefinition_IsLatest
CREATE INDEX IF NOT EXISTS IX_WorkflowDefinition_IsLatest ON WorkflowDefinitions (
    "IsLatest"
);


-- 索引：IX_WorkflowDefinition_IsPublished
CREATE INDEX IF NOT EXISTS IX_WorkflowDefinition_IsPublished ON WorkflowDefinitions (
    "IsPublished"
);


-- 索引：IX_WorkflowDefinition_Name
CREATE INDEX IF NOT EXISTS IX_WorkflowDefinition_Name ON WorkflowDefinitions (
    "Name"
);


-- 索引：IX_WorkflowDefinition_Tag
CREATE INDEX IF NOT EXISTS IX_WorkflowDefinition_Tag ON WorkflowDefinitions (
    "Tag"
);


-- 索引：IX_WorkflowDefinition_TenantId
CREATE INDEX IF NOT EXISTS IX_WorkflowDefinition_TenantId ON WorkflowDefinitions (
    "TenantId"
);


-- 索引：IX_WorkflowDefinition_Version
CREATE INDEX IF NOT EXISTS IX_WorkflowDefinition_Version ON WorkflowDefinitions (
    "Version"
);


-- 索引：IX_WorkflowExecutionLogRecord_ActivityId
CREATE INDEX IF NOT EXISTS IX_WorkflowExecutionLogRecord_ActivityId ON WorkflowExecutionLogRecords (
    "ActivityId"
);


-- 索引：IX_WorkflowExecutionLogRecord_ActivityType
CREATE INDEX IF NOT EXISTS IX_WorkflowExecutionLogRecord_ActivityType ON WorkflowExecutionLogRecords (
    "ActivityType"
);


-- 索引：IX_WorkflowExecutionLogRecord_TenantId
CREATE INDEX IF NOT EXISTS IX_WorkflowExecutionLogRecord_TenantId ON WorkflowExecutionLogRecords (
    "TenantId"
);


-- 索引：IX_WorkflowExecutionLogRecord_Timestamp
CREATE INDEX IF NOT EXISTS IX_WorkflowExecutionLogRecord_Timestamp ON WorkflowExecutionLogRecords (
    "Timestamp"
);


-- 索引：IX_WorkflowExecutionLogRecord_WorkflowInstanceId
CREATE INDEX IF NOT EXISTS IX_WorkflowExecutionLogRecord_WorkflowInstanceId ON WorkflowExecutionLogRecords (
    "WorkflowInstanceId"
);


-- 索引：IX_WorkflowInstance_ContextId
CREATE INDEX IF NOT EXISTS IX_WorkflowInstance_ContextId ON WorkflowInstances (
    "ContextId"
);


-- 索引：IX_WorkflowInstance_ContextType
CREATE INDEX IF NOT EXISTS IX_WorkflowInstance_ContextType ON WorkflowInstances (
    "ContextType"
);


-- 索引：IX_WorkflowInstance_CorrelationId
CREATE INDEX IF NOT EXISTS IX_WorkflowInstance_CorrelationId ON WorkflowInstances (
    "CorrelationId"
);


-- 索引：IX_WorkflowInstance_CreatedAt
CREATE INDEX IF NOT EXISTS IX_WorkflowInstance_CreatedAt ON WorkflowInstances (
    "CreatedAt"
);


-- 索引：IX_WorkflowInstance_DefinitionId
CREATE INDEX IF NOT EXISTS IX_WorkflowInstance_DefinitionId ON WorkflowInstances (
    "DefinitionId"
);


-- 索引：IX_WorkflowInstance_DefinitionVersionId
CREATE INDEX IF NOT EXISTS IX_WorkflowInstance_DefinitionVersionId ON WorkflowInstances (
    "DefinitionVersionId"
);


-- 索引：IX_WorkflowInstance_FaultedAt
CREATE INDEX IF NOT EXISTS IX_WorkflowInstance_FaultedAt ON WorkflowInstances (
    "FaultedAt"
);


-- 索引：IX_WorkflowInstance_FinishedAt
CREATE INDEX IF NOT EXISTS IX_WorkflowInstance_FinishedAt ON WorkflowInstances (
    "FinishedAt"
);


-- 索引：IX_WorkflowInstance_LastExecutedAt
CREATE INDEX IF NOT EXISTS IX_WorkflowInstance_LastExecutedAt ON WorkflowInstances (
    "LastExecutedAt"
);


-- 索引：IX_WorkflowInstance_Name
CREATE INDEX IF NOT EXISTS IX_WorkflowInstance_Name ON WorkflowInstances (
    "Name"
);


-- 索引：IX_WorkflowInstance_TenantId
CREATE INDEX IF NOT EXISTS IX_WorkflowInstance_TenantId ON WorkflowInstances (
    "TenantId"
);


-- 索引：IX_WorkflowInstance_WorkflowStatus
CREATE INDEX IF NOT EXISTS IX_WorkflowInstance_WorkflowStatus ON WorkflowInstances (
    "WorkflowStatus"
);


-- 索引：IX_WorkflowInstance_WorkflowStatus_DefinitionId
CREATE INDEX IF NOT EXISTS IX_WorkflowInstance_WorkflowStatus_DefinitionId ON WorkflowInstances (
    "WorkflowStatus",
    "DefinitionId"
);


-- 索引：IX_WorkflowInstance_WorkflowStatus_DefinitionId_Version
CREATE INDEX IF NOT EXISTS IX_WorkflowInstance_WorkflowStatus_DefinitionId_Version ON WorkflowInstances (
    "WorkflowStatus",
    "DefinitionId",
    "Version"
);


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
