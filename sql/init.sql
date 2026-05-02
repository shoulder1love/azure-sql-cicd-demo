IF NOT EXISTS (
    SELECT * FROM sys.tables WHERE name = 'DemoLog'
)
BEGIN
    CREATE TABLE DemoLog (
        Id INT IDENTITY(1,1) PRIMARY KEY,
        Message NVARCHAR(255),
        CreatedAt DATETIME DEFAULT GETDATE()
    );
END;

INSERT INTO DemoLog (Message)
VALUES ('Deployment from Azure DevOps pipeline completed successfully');
