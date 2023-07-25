program frmMongoTemplate_p;

uses
  Vcl.Forms,
  frmMongoTemplate_u in 'frmMongoTemplate_u.pas' {frmMongoTemplate},
  MongoDB.Settings in 'MongoDB.Settings.pas',
  Grijjy.BinaryCoding in 'Resources\Grijjy\Foundation\Grijjy.BinaryCoding.pas',
  Grijjy.Bson.IO in 'Resources\Grijjy\Foundation\Grijjy.Bson.IO.pas',
  Grijjy.Bson in 'Resources\Grijjy\Foundation\Grijjy.Bson.pas',
  Grijjy.Bson.Path in 'Resources\Grijjy\Foundation\Grijjy.Bson.Path.pas',
  Grijjy.Bson.Serialization in 'Resources\Grijjy\Foundation\Grijjy.Bson.Serialization.pas',
  Grijjy.Collections in 'Resources\Grijjy\Foundation\Grijjy.Collections.pas',
  Grijjy.DateUtils in 'Resources\Grijjy\Foundation\Grijjy.DateUtils.pas',
  Grijjy.MemoryPool in 'Resources\Grijjy\Foundation\Grijjy.MemoryPool.pas',
  Grijjy.OpenSSL.API in 'Resources\Grijjy\Foundation\Grijjy.OpenSSL.API.pas',
  Grijjy.OpenSSL in 'Resources\Grijjy\Foundation\Grijjy.OpenSSL.pas',
  Grijjy.Scram in 'Resources\Grijjy\Foundation\Grijjy.Scram.pas',
  Grijjy.SocketPool.Win in 'Resources\Grijjy\Foundation\Grijjy.SocketPool.Win.pas',
  Grijjy.System in 'Resources\Grijjy\Foundation\Grijjy.System.pas',
  Grijjy.SysUtils in 'Resources\Grijjy\Foundation\Grijjy.SysUtils.pas',
  Grijjy.Winsock2 in 'Resources\Grijjy\Foundation\Grijjy.Winsock2.pas',
  Grijjy.MongoDB.Compressors in 'Resources\Grijjy\MongoDB\Grijjy.MongoDB.Compressors.pas',
  Grijjy.MongoDB in 'Resources\Grijjy\MongoDB\Grijjy.MongoDB.pas',
  Grijjy.MongoDB.Protocol in 'Resources\Grijjy\MongoDB\Grijjy.MongoDB.Protocol.pas',
  Grijjy.MongoDB.Queries in 'Resources\Grijjy\MongoDB\Grijjy.MongoDB.Queries.pas',
  Snappy in 'Resources\Grijjy\MongoDB\Snappy.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMongoTemplate, frmMongoTemplate);
  Application.Run;
end.
