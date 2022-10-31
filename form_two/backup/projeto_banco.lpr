program projeto_banco;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  {$IFDEF HASAMIGA}
  athreads,
  {$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, u_abstrato, u_menu, u_usuario, u_cadastro_abstrato, u_cadastro_usuario,
  unit1, u_classe_usuario
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TF_menu_inicial, F_menu_inicial);
  Application.CreateForm(Tf_usuario, f_usuario);
  Application.CreateForm(Tf_cadastro_abstrato, f_cadastro_abstrato);
  Application.CreateForm(Tf_cadastro_usuario, f_cadastro_usuario);
  Application.Run;
end.

