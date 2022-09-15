unit Unit_Principal;

interface

uses
  System.UITypes, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.FileCtrl, Vcl.Buttons,
  Vcl.ComCtrls, IdBaseComponent, IdAntiFreezeBase, Vcl.IdAntiFreeze;

type
  TFormPrincipal = class(TForm)
    MemoLog: TMemo;
    DirectoryListBox1: TDirectoryListBox;
    FileListBox1: TFileListBox;
    ListBoxBlocos: TListBox;
    BitBtnRemover: TBitBtn;
    MemoHide: TMemo;
    StatusBar: TStatusBar;
    IdAntiFreeze: TIdAntiFreeze;
    BitBtnSalvar: TBitBtn;
    ListBoxContagem: TListBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    BitBtnAjustarLinhas: TBitBtn;
    procedure FileListBox1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtnRemoverClick(Sender: TObject);
    procedure BitBtnSalvarClick(Sender: TObject);
    procedure ListarBlocos;
    procedure ListBoxBlocosClick(Sender: TObject);
    procedure ListBoxContagemClick(Sender: TObject);
    procedure BitBtnAjustarLinhasClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

procedure TFormPrincipal.BitBtnAjustarLinhasClick(Sender: TObject);
var
  I: Integer;
  contador_0:integer;
  contador_B:integer;
  contador_C:integer;
  contador_D:integer;
  contador_E:integer;
  contador_G:integer;
  contador_H:integer;
  contador_K:integer;
  contador_1:integer;
  contador_9:integer;
begin
  if (MessageDlg('Ajustar totalizadores?',mtConfirmation,[mbyes,mbno],0)=mryes) then
  begin
    contador_0 := 0;
    contador_B := 0;
    contador_C := 0;
    contador_D := 0;
    contador_E := 0;
    contador_G := 0;
    contador_H := 0;
    contador_K := 0;
    contador_1 := 0;
    contador_9 := 0;
    for I := 0 to ListBoxBlocos.Count - 1 do
    begin
      {bloco 0  0990}
      if (Copy(ListBoxBlocos.Items[I],1,1) = '0') then
      begin
        contador_0 := (contador_0 + StrToInt(ListBoxContagem.Items[I]));
      end
      {bloco 0  0990}
      else
      {bloco B  B990}
      if (Copy(ListBoxBlocos.Items[I],1,1) = 'B') then
      begin
        contador_B := (contador_B + StrToInt(ListBoxContagem.Items[I]));
      end
      {bloco B  B990}
      else
      {bloco C  C990}
      if (Copy(ListBoxBlocos.Items[I],1,1) = 'C') then
      begin
        contador_C := (contador_C + StrToInt(ListBoxContagem.Items[I]));
      end
      {bloco C  C990}
      else
      {bloco D  D990}
      if (Copy(ListBoxBlocos.Items[I],1,1) = 'D') then
      begin
        contador_D := (contador_D + StrToInt(ListBoxContagem.Items[I]));
      end
      {bloco D  D990}
      else
      {bloco E  D990}
      if (Copy(ListBoxBlocos.Items[I],1,1) = 'E') then
      begin
        contador_E := (contador_E + StrToInt(ListBoxContagem.Items[I]));
      end
      {bloco E  E990}
      else
      {bloco G  G990}
      if (Copy(ListBoxBlocos.Items[I],1,1) = 'G') then
      begin
        contador_G := (contador_G + StrToInt(ListBoxContagem.Items[I]));
      end
      {bloco G  G990}
      else
      {bloco E  H990}
      if (Copy(ListBoxBlocos.Items[I],1,1) = 'H') then
      begin
        contador_H := (contador_H + StrToInt(ListBoxContagem.Items[I]));
      end
      {bloco H  H990}
      else
      {bloco K  K990}
      if (Copy(ListBoxBlocos.Items[I],1,1) = 'K') then
      begin
        contador_K := (contador_K + StrToInt(ListBoxContagem.Items[I]));
      end
      {bloco K  K990}
      else
      {bloco 1  1990}
      if (Copy(ListBoxBlocos.Items[I],1,1) = '1') then
      begin
        contador_1 := (contador_1 + StrToInt(ListBoxContagem.Items[I]));
      end
      {bloco 1  1990}
      else
      {bloco 9  9990}
      if (Copy(ListBoxBlocos.Items[I],1,1) = '9') then
      begin
        contador_9 := (contador_9 + StrToInt(ListBoxContagem.Items[I]));
      end;
      {bloco 9  9990}
    end;
    MemoHide.Lines.Clear;
    for I := 0 to MemoLog.Lines.Count -1 do
    begin
      {bloco 0  0990}
      if (Copy(MemoLog.Lines[I],2,4) = '0990') then
      begin
        if (contador_0 > 0) then
        begin
          MemoHide.Lines.Add('|0990|' + IntToStr(contador_0) + '|');
        end;
      end
      {bloco 0  0990}
      else
      {bloco B  C990}
      if (Copy(MemoLog.Lines[I],2,4) = 'B990') then
      begin
        if (contador_B > 0) then
        begin
          MemoHide.Lines.Add('|B990|' + IntToStr(contador_B) + '|');
        end;
      end
      {bloco B  B990}
      else
      {bloco C  C990}
      if (Copy(MemoLog.Lines[I],2,4) = 'C990') then
      begin
        if (contador_C > 0) then
        begin
          MemoHide.Lines.Add('|C990|' + IntToStr(contador_C) + '|');
        end;
      end
      {bloco C  C990}
      else
      {bloco D  D990}
      if (Copy(MemoLog.Lines[I],2,4) = 'D990') then
      begin
        if (contador_D > 0) then
        begin
          MemoHide.Lines.Add('|D990|' + IntToStr(contador_D) + '|');
        end;
      end
      {bloco D  D990}
      else
      {bloco E  E990}
      if (Copy(MemoLog.Lines[I],2,4) = 'E990') then
      begin
        if (contador_E > 0) then
        begin
          MemoHide.Lines.Add('|E990|' + IntToStr(contador_E) + '|');
        end;
      end
      {bloco E  E990}
      else
      {bloco G  G990}
      if (Copy(MemoLog.Lines[I],2,4) = 'G990') then
      begin
        if (contador_G > 0) then
        begin
          MemoHide.Lines.Add('|G990|' + IntToStr(contador_G) + '|');
        end;
      end
      {bloco G  G990}
      else
      {bloco H  H990}
      if (Copy(MemoLog.Lines[I],2,4) = 'H990') then
      begin
        if (contador_H > 0) then
        begin
          MemoHide.Lines.Add('|H990|' + IntToStr(contador_H) + '|');
        end;
      end
      {bloco H  H990}
      else
      {bloco K  K990}
      if (Copy(MemoLog.Lines[I],2,4) = 'K990') then
      begin
        if (contador_K > 0) then
        begin
          MemoHide.Lines.Add('|K990|' + IntToStr(contador_K) + '|');
        end;
      end
      {bloco K  K990}
      else
      {bloco 1  1990}
      if (Copy(MemoLog.Lines[I],2,4) = '1990') then
      begin
        if (contador_1 > 0) then
        begin
          MemoHide.Lines.Add('|1990|' + IntToStr(contador_1) + '|');
        end;
      end
      {bloco 1  1990}
      else
      {bloco 9  9990}
      if (Copy(MemoLog.Lines[I],2,4) = '9990') then
      begin
        if (contador_9 > 0) then
        begin
          MemoHide.Lines.Add('|9990|' + IntToStr(contador_9) + '|');
        end;
      end
      {bloco 9  9990}
      else
      {não encontrado anteriormente}
      begin
        MemoHide.Lines.Add(MemoLog.Lines[I]);
      end;
      {não encontrado anteriormente}
    end;
    MemoLog.Lines := MemoHide.Lines;
    for I := 0 to MemoLog.Lines.Count -1 do
    begin
      {bloco 9  9900}
      if (Copy(MemoLog.Lines[I],2,9) = '9900|9900') then
      begin
        MemoLog.Lines[I] := '|9900|9900|' + ListBoxContagem.Items[ListBoxBlocos.Items.IndexOf('9900')] + '|';
      end
      {bloco 9 9900}
      else
      {bloco 9  9999}
      if (Copy(MemoLog.Lines[I],2,4) = '9999') then
      begin
        MemoLog.Lines[I] := '|9999|' + IntToStr(MemoLog.Lines.Count) + '|';
      end;
      {bloco 9 9999}
    end;
  end;
end;

procedure TFormPrincipal.BitBtnRemoverClick(Sender: TObject);
var
  I: integer;
  L: Integer;
begin
  if (ListBoxBlocos.Items.Count = 0) then
  begin
    ShowMessage('Selecione ao menos um bloco na lista.');
  end
  else
  if (MessageDlg('Você tem certeza que deseja excluir o bloco?',mtConfirmation,[mbyes,mbno],0)=mryes) then
  begin
    FileListBox1.Enabled := False;
    DirectoryListBox1.Enabled := False;
    MemoHide.Lines.Clear;
    for I := 0 to MemoLog.Lines.Count -1 do
    begin
      StatusBar.Panels[1].Text := 'Processando linha ' + IntToStr(I + 1) + ' de ' + IntToStr(MemoLog.Lines.Count);
      Application.ProcessMessages;
      if (Copy(MemoLog.Lines[I], 1, 1) = '|') and (Copy(MemoLog.Lines[I], 6, 1) = '|') then
      begin
        for L := 0 to ListBoxBlocos.Items.Count -1 do
        begin
          if (ListBoxBlocos.Selected[L]) then
          begin
            if (Copy(MemoLog.Lines[I], 2, 4) <> ListBoxBlocos.Items[L])
            and (Copy(MemoLog.Lines[I], 1, 10) <> '|9900|' + ListBoxBlocos.Items[L]) then
            begin
              MemoHide.Lines.Add(MemoLog.Lines[I]);
            end;
          end;
        end;
      end;
    end;
    MemoLog.Lines.Clear;
    MemoLog.Lines := MemoHide.Lines;
    ListarBlocos();
    BitBtnAjustarLinhasClick(BitBtnAjustarLinhas);
    StatusBar.Panels[1].Text := '';
    Application.ProcessMessages;
  end;
end;

procedure TFormPrincipal.BitBtnSalvarClick(Sender: TObject);
begin
  if  (MessageDlg('O Arquivo será sobrescrito. Você tem certeza que deseja salvar as mudanças?',mtConfirmation,[mbyes,mbno],0)=mryes) then
  begin
    MemoLog.Lines.SaveToFile(FileListBox1.Items.Strings[0]);
  end;
end;

procedure TFormPrincipal.FileListBox1Click(Sender: TObject);
var
  I: Integer;
begin
  if (TFileListBox(Sender).Items.Count > 0) then
  begin
    for I := 0 to TFileListBox(Sender).Items.Count - 1 do
    begin
      if (TFileListBox(Sender).Selected[I]) then
      begin
        if (FileExists(TFileListBox(Sender).Items.Strings[0])) then
        begin
          MemoLog.Lines.LoadFromFile(TFileListBox(Sender).Items.Strings[0]);
          ListarBlocos;
        end;
      end;
    end;
  end;
end;

procedure TFormPrincipal.FormCreate(Sender: TObject);
begin
  MemoLog.Lines.Clear;
  ListBoxBlocos.Clear;
  ListBoxContagem.Clear;
end;


procedure TFormPrincipal.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = Ord('S')) then
  begin
    BitBtnSalvarClick(BitBtnSalvar);
  end;
end;

procedure TFormPrincipal.ListarBlocos;
var
  I:integer;
begin
  ListBoxBlocos.Clear;
  ListBoxContagem.Clear;
  for I := 0 to MemoLog.Lines.Count -1 do
  begin
    if (Copy(MemoLog.Lines[I], 1, 1) = '|') and (Copy(MemoLog.Lines[I], 6, 1) = '|') then
    begin
      if (ListBoxBlocos.Items.IndexOf(Copy(MemoLog.Lines[I], 2, 4)) = -1) then
      begin
        ListBoxBlocos.Items.Add(Copy(MemoLog.Lines[I], 2, 4));
        ListBoxContagem.Items.Add('1');
      end
      else
      begin
        ListBoxContagem.Items[ListBoxBlocos.Items.IndexOf(Copy(MemoLog.Lines[I], 2, 4))] := IntToStr(StrToInt(ListBoxContagem.Items[ListBoxBlocos.Items.IndexOf(Copy(MemoLog.Lines[I], 2, 4))]) + 1);
      end;
    end;
  end;
  StatusBar.Panels[0].Text := IntToStr(ListBoxBlocos.Count) + ' blocos em ' + IntToStr(MemoLog.Lines.Count) + ' linhas.';
  ListBoxBlocos.ClientHeight := ListBoxBlocos.ItemHeight * ListBoxBlocos.Items.Count;
  ListBoxContagem.ClientHeight := ListBoxContagem.ItemHeight * ListBoxContagem.Items.Count;
  Application.ProcessMessages;
end;

procedure TFormPrincipal.ListBoxBlocosClick(Sender: TObject);
begin
  ListBoxContagem.ItemIndex := ListBoxBlocos.ItemIndex;
end;

procedure TFormPrincipal.ListBoxContagemClick(Sender: TObject);
begin
  ListBoxBlocos.ItemIndex := ListBoxContagem.ItemIndex;
end;

end.
