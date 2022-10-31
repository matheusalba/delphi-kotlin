unit u_menu;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, u_usuario;

type

  { TF_menu_inicial }

  TF_menu_inicial = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  F_menu_inicial: TF_menu_inicial;

implementation

{$R *.lfm}

{ TF_menu_inicial }

procedure TF_menu_inicial.Button1Click(Sender: TObject);
begin
  Application.CreateForm(Tf_usuario, f_usuario);
  f_usuario.show;
end;


end.

