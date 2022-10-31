unit u_usuario;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, u_abstrato, u_cadastro_usuario, Unit2;

type

  { Tf_usuario }

  Tf_usuario = class(Tf_abstrato)
    Button1: TButton;
    btn_validar_usuario: TButton;
    campo_codigo: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure btn_validar_usuarioClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    function ValidaUsuario(campo: String): Boolean; override;
  private

  public

  end;

var
  f_usuario: Tf_usuario;

implementation

{$R *.lfm}

{ Tf_usuario }

procedure Tf_usuario.Button1Click(Sender: TObject);
begin
  Application.CreateForm(Tf_cadastro_usuario, f_cadastro_usuario);
  f_cadastro_usuario.show;
end;

procedure Tf_usuario.btn_validar_usuarioClick(Sender: TObject);
begin
if ValidaUsuario(campo_codigo.Text)then
  begin
  showmessage('ok');
  end
  else
  showmessage('not ok');
end;

function Tf_usuario.ValidaUsuario(campo: String):Boolean;
var
  myfile : textfile;
  sline: string;
begin
  assignfile(myfile,'registro.txt');
  reset(myfile);
  while not eof (myfile) do
    begin
      readln(myfile, sline);
      if(sline=campo)then
        begin
           Result:= true;
           closefile(myfile);
           exit;
        end;
    end;
        closefile(myfile);
        Result:=false;
end;

procedure Tf_usuario.FormCreate(Sender: TObject);
var
  myfile: textfile;
  num, max, count: integer;
begin
  max := 10;
  count := 1;
  assignfile(myfile,'registro.txt');
  rewrite(myfile);
  randomize;
  while count < max do
        begin
             num := 1 + Round(random(50000));
             count := count + 1;
             writeln(myfile,IntToStr(num)+ #13 );
        end;
   closefile(myfile);
end;

end.

