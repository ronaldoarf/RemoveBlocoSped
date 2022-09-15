object FormPrincipal: TFormPrincipal
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Remover Blocos SPED'
  ClientHeight = 473
  ClientWidth = 889
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnKeyUp = FormKeyUp
  DesignSize = (
    889
    473)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 41
    Height = 13
    Caption = 'Diret'#243'rio'
  end
  object Label3: TLabel
    Left = 681
    Top = 8
    Width = 25
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'Bloco'
    ExplicitLeft = 671
  end
  object Label4: TLabel
    Left = 781
    Top = 8
    Width = 30
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'Linhas'
    ExplicitLeft = 771
  end
  object Label5: TLabel
    Left = 8
    Top = 184
    Width = 102
    Height = 13
    Caption = 'Conte'#250'do do Arquivo'
  end
  object Label2: TLabel
    Left = 263
    Top = 8
    Width = 65
    Height = 13
    Caption = 'Arquivo SPED'
  end
  object MemoLog: TMemo
    Left = 8
    Top = 200
    Width = 657
    Height = 248
    Anchors = [akLeft, akTop, akRight, akBottom]
    Lines.Strings = (
      'MemoLog')
    ScrollBars = ssBoth
    TabOrder = 2
    WordWrap = False
  end
  object DirectoryListBox1: TDirectoryListBox
    Left = 8
    Top = 24
    Width = 249
    Height = 147
    FileList = FileListBox1
    TabOrder = 0
  end
  object FileListBox1: TFileListBox
    Left = 263
    Top = 24
    Width = 297
    Height = 147
    ItemHeight = 13
    Mask = '*.txt'
    TabOrder = 1
    OnClick = FileListBox1Click
  end
  object BitBtnRemover: TBitBtn
    Left = 566
    Top = 24
    Width = 99
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Remover Bloco'
    TabOrder = 3
    OnClick = BitBtnRemoverClick
  end
  object MemoHide: TMemo
    Left = 8
    Top = 203
    Width = 649
    Height = 182
    Lines.Strings = (
      'MemoHide')
    TabOrder = 4
    Visible = False
    WordWrap = False
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 454
    Width = 889
    Height = 19
    Panels = <
      item
        Alignment = taRightJustify
        Width = 200
      end
      item
        Alignment = taRightJustify
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Width = 200
      end
      item
        Width = 50
      end>
  end
  object BitBtnSalvar: TBitBtn
    Left = 566
    Top = 86
    Width = 99
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Salvar Arquivo'
    TabOrder = 6
    OnClick = BitBtnSalvarClick
  end
  object ListBoxBlocos: TListBox
    Left = 671
    Top = 24
    Width = 100
    Height = 147
    Hint = '0190 0200 0400 0450 C110 C113 C170'
    Anchors = [akTop, akRight]
    ItemHeight = 13
    MultiSelect = True
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    OnClick = ListBoxBlocosClick
  end
  object ListBoxContagem: TListBox
    Left = 771
    Top = 24
    Width = 100
    Height = 147
    Anchors = [akTop, akRight]
    ItemHeight = 13
    TabOrder = 8
    OnClick = ListBoxContagemClick
  end
  object BitBtnAjustarLinhas: TBitBtn
    Left = 566
    Top = 55
    Width = 99
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Ajustar Linhas'
    TabOrder = 9
    OnClick = BitBtnAjustarLinhasClick
  end
  object IdAntiFreeze: TIdAntiFreeze
    Left = 632
    Top = 264
  end
end
