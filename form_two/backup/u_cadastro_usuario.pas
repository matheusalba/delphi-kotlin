unit u_cadastro_usuario;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, IdHTTP,
  u_cadastro_abstrato, fphttpclient, u_classe_usuario;

type

  { Tf_cadastro_usuario }

  Tf_cadastro_usuario = class(Tf_cadastro_abstrato)
    btn_get: TButton;
    btn_create: TButton;
    btn_post: TButton;
    campo_nome: TEdit;
    campo_fone: TEdit;
    campo_cpf: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    memo_teste: TMemo;
    procedure btn_createClick(Sender: TObject);
    procedure btn_getClick(Sender: TObject);
    procedure btn_postClick(Sender: TObject);

  private

  public

  end;

var
  f_cadastro_usuario: Tf_cadastro_usuario;

implementation

{$R *.lfm}

{ Tf_cadastro_usuario }

procedure Tf_cadastro_usuario.btn_getClick(Sender: TObject);
begin
  memo_teste.Text := TFPHTTPClient.SimpleGet('http://localhost:8080/usuario');
end;

procedure Tf_cadastro_usuario.btn_createClick(Sender: TObject);
var
  user: TUsuario;
begin
  user := TUsuario.Create(campo_nome.Text, campo_cpf.Text);
  try
    showmessage(user.nome);
  finally
   user.Free;
  end;
end;

//procedure Tf_cadastro_usuario.btn_postClick(Sender: TObject);
//var
//  Json: string;
//  sResponse: string;
//  JsonToSend: TStringStream;
//begin
//  Json := '{"nome":"sdd","telefone":"222","cpf":"2313"}';
  //JsonToSend := TStringStream.Create(Utf8Encode(Json));
//  JsonToSend := TStringStream.Create(Json, TEncoding.UTF8);
//  try
//    IdHTTP.TIdHTTPRequest.ContentType := 'application/json';
//   IdHTTP.TIdHTTPRequest.CharSet := 'utf-8';
    //HTTP1.Request.ContentType := 'application/json';
    //HTTP1.Request.CharSet := 'utf-8';
//    try
//      sResponse := IdHTTP.Post('http://localhost:8080/usuario', JsonToSend);
//    except
//      on E: Exception do
//        ShowMessage('Error on request: '#13#10 + e.Message);
//    end;
//  finally
//    JsonToSend.Free;
//  end;

//   showmessage(sResponse);
//end;

//procedure Tf_cadastro_usuario.btn_postClick(Sender: TObject);
//begin
//  showmessage(TFPHTTPClient.SimpleFormPost('http://localhost:8080/user','{"nome":"Matheus","telefone":"888","cpf":"7878"}'))
//end;

//procedure Tf_cadastro_usuario.btn_postClick(Sender: TObject);
//var
//FPHTTPClient: TFPHTTPClient;
//SL:TStringList;
//Str:String;
//Json:String;
//JsonToSend: TStringStream;

//begin
//FPHTTPClient := TFPHTTPClient.Create(nil);
//Json := '{"nome":"Matheus","telefone":"888","cpf":"7878"}';
//JsonToSend := TStringStream.Create(Json, TEncoding.UTF8);
//try
// FPHTTPClient.AllowRedirect := True;
//      try
//         Str:= FPHTTPClient.SimpleFormPost('http://localhost:8080/usuario',Json);
//         showmessage(Str);
//      except
//               on E: exception do
//               ShowMessage(E.Message);
//      end;
//      finally
//       JsonToSend.Free;
//      end;
//FPHTTPClient.Free;
//end;



//procedure Tf_cadastro_usuario.btn_postClick(Sender: TObject);
//var
//  IParams:TStringList;
//  IResponse:TStringStream;
//begin
//  IParams.Add('"nome"="Mateus"');
//  IParams.Add('"telefone"="222"');
//  IParams.Add('"cpf"="123"');
//  IParams := TStringList.Create;
//  IResponse := TStringStream.Create('');
//  try
//    IdHTTP1.Post('http://localhost:80808/usuario',IParams,IResponse);
//    showmessage(IResponse.ToString);
//  finally
//   IParams.Free();
//   IResponse.Free();
//  end;

//end;

//procedure Tf_cadastro_usuario.btn_postClick(Sender: TObject);
//var
//
//  Json, sResponse:String;
//  JsonToSend: TStringStream;
//begin
//
//  Json := '{"nome":"Matheus","telefone":"888","cpf":"7878"}';
//  JsonToSend := TStringStream.Create(Json, TEncoding.UTF8);
//  try
//       HTTP1.Request.ContentType := 'application/json';
//       HTTP1.Request.Charset := 'utf-8';
//         try
//            sResponse := HTTP1.Post('http://localhost:8080/usuario',JsonToSend);
//        except
//            on E: Exception do
//           showMessage(e.Message)
//            end;
//           finally
//           JsonToSend.Free;
//end;
//end;

procedure Tf_cadastro_usuario.btn_postClick(Sender: TObject);
var
  Json, sResponse:String;
  JsonToSend: TStringStream;
begin
  Json:='{"nome":"Matheus","telefone":"888","cpf":"7878"}';
  JsonToSend := TStringStream.Create(Json, TEncoding.UTF8);
  with TFPHTTPClient.Create(nil) do
       try
          Post('http://localhost:8080/usuario',json);
          showmessage('ok')
       finally
        JsonToSend.Free;
       end;
end;


end.

