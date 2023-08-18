unit frmMongoTemplate_u;

interface

uses

  { PRIMARY INCLUDES }
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.ComCtrls,

  { TEMPLATE INCLUDES }
  Grijjy.MongoDB,
  Grijjy.Bson,
  Grijjy.MongoDB.Protocol,
  Grijjy.MongoDB.Queries,
  Grijjy.MongoDB.Compressors,
  MongoDB.Settings;

type

  TfrmMongoTemplate = class(TForm)
    btnGetCollection: TButton;
    lblHeading01: TLabel;
    grpLoginToAccount: TGroupBox;
    edtLoginUsername: TEdit;
    edtLoginPassword: TEdit;
    lblLoginUsername: TLabel;
    lblLoginPassword: TLabel;
    btnLogin: TButton;
    pgControlAuth: TPageControl;
    loginForm: TTabSheet;
    signUpForm: TTabSheet;
    grpSignUpForAccount: TGroupBox;
    lblHeading02: TLabel;
    lblSignUpUsername: TLabel;
    lblSignUpPassword: TLabel;
    edtSignUpUsername: TEdit;
    edtSignUpPassword: TEdit;
    btnSignUp: TButton;
    btnSwitchToSignUp: TButton;
    btnSwitchToLogin: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnGetCollectionClick(Sender: TObject);
    procedure btnSwitchToLoginClick(Sender: TObject);
    procedure switchPage(Page: TTabSheet);
    procedure btnSwitchToSignUpClick(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var

  { DEFAULT VARIABLES }
  frmMongoTemplate: TfrmMongoTemplate;

  { MONGO VARIABLES }
  Client: IgoMongoClient;
  Database: IgoMongoDatabase;
  Settings: TgoMongoClientSettings;

  { TEMP VARIABLES }

implementation

{$R *.dfm}

procedure TfrmMongoTemplate.btnGetCollectionClick(Sender: TObject);

var

  { EXAMPLE VARIABLES }
  sCollectionToRetrieve: String;
  Collection: IgoMongoCollection;
  Document: TgoBsonDocument;
  DocumentArray: TArray<TgoBsonDocument>;

begin

  { EXAMPLE: RETRIEVE DOCUMENTS FROM GIVEN COLLECTION AND LOOP THROUGH TO DISPLAY }

  // prompt user for a collection name
  sCollectionToRetrieve := InputBox(
    'User Prompt',
    'Which collection would you like to look in?',
    'logs'
  );

  // define a collection to the database
  Collection := Database.GetCollection(sCollectionToRetrieve);

  // set the array list with collection
  DocumentArray := Collection.Find.ToArray;

  // check document count
  if Length(DocumentArray) > 0 then

    begin

      // iterate through the documents with erronomeus type
      for Document in DocumentArray do

        begin

          // show to user
          ShowMessage(Document.ToJson);

        end;

    end

  else

    // show error message to user
    MessageDlg(
      'No items could be found within this collection. Please also make sure that it exists.',
      TMsgDlgType.mtError,
      [TMsgDlgBtn.mbOK],
      0
    );

end;

procedure TfrmMongoTemplate.FormCreate(Sender: TObject);

begin

  // create the settings that will be used by the mongodb client
  Settings := TgoMongoClientSettings.Create;
  Settings.AuthDatabase := AUTH_DATABASE;

  // check if auth should be included
  if USE_AUTH then

    begin

      // package the authentication details
      Settings.Username := AUTH_USERNAME;
      Settings.Password := AUTH_PASSWORD;
      Settings.AuthMechanism := TgoMongoAuthMechanism.SCRAM_SHA_1;

    end;

  // create the client connection and save it to a global variable
  Client := TgoMongoClient.Create(
    SERVER_ADDRESS, // the main server address eg. '127.0.0.1' or 'localhost'
    StrToInt(SERVER_PORT), // the main server port eg 27017 or 27020
    Settings // the settings module containing very important connection configurations
  );

  // set the main use database from the settings module
  Database := Client.GetDatabase(CONTROL_DATABASE);

end;

procedure TfrmMongoTemplate.btnLoginClick(Sender: TObject);

var
  Collection: IgoMongoCollection;
  Doc: TgoBsonDocument;

begin

  // testing data retrieval from MongoDB
  // also possible to combine filters so that we can do proper user searching
  Collection := Database.GetCollection('logs');
  Doc := Collection.FindOne(
    TgoMongoFilter.Eq('data', 'hello')
  );
  ShowMessage(Doc.ToJson);

end;

procedure TfrmMongoTemplate.btnSwitchToLoginClick(Sender: TObject);

begin

  // change to other page on page control
  switchPage(loginForm);

end;

procedure TfrmMongoTemplate.btnSwitchToSignUpClick(Sender: TObject);

begin

  // change to other page on page control
  switchPage(signUpForm);

end;

procedure TfrmMongoTemplate.switchPage(Page: TTabSheet);

begin

  // switch page
  pgControlAuth.ActivePage := Page;

end;

end.
