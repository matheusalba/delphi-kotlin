unit u_abstrato;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type
  { Tf_abstrato }

  Tf_abstrato = class(TForm)

  Label1: TLabel;
  function ValidaUsuario(campo:String):Boolean;Virtual;

  private

  public

  end;

var
  f_abstrato: Tf_abstrato;

implementation
  function Tf_abstrato.ValidaUsuario(campo:String):Boolean;
  begin
    Result:=true;
  end;

{$R *.lfm}

end.

