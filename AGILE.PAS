{ @author: Sylvain Maltais (support@gladir.com)
  @created: 2024
  @website(https://www.gladir.com/lorem-ipsum-tools)
  @abstract(Target: Turbo Pascal 7, Free Pascal 3.2)
}

Program AGILE;

Uses Strings;

Const
 Words:Array[0..122]of PChar=(
  'agile','ipsum','Product Owner','Developer','Scrum Master',
  'Stakeholder','Release Train Engineer','Product Manager',
  'Jira Engineer','\"DevOps\" guy','10x Engineer',
  'Developer Advocate','Enterprise Architect','Vendor Management',
  'CTO','CEO','Agile Coach','agile','sprint','SAFe','comfagile',
  'scrum','retrospective','feature','milestone','planning',
  'PI','review','SoDa','Software Development Agile','Burndown Chart',
  'increment','kanban','task','mindset','backlog','user stories',
  'burn down','LESS','iteration','commit','freaky friday',
  'controversial','misalignment','Shane','Lean','story point',
  'Feedback','DevOps','Agile Style Script (ASS)',
  'Agile Cyborg Security (ACS)','Fist of Five','Time to Market',
  'daily standup','deadline','management','KISS','communication',
  'scrum board','Jira','deployment','CI/CD','prod Deployment',
  'dev Environment','Metaverse','big data','AI','MVP','silo',
  'outcome','velocity','planning poker','vision','magic estimation',
  'timebox','DoD','product roadmap','sprint boundary','scrum values',
  'crypto','web3','NFTs','Chat GPT','review','revel','visualize',
  'monitor','extrapolate','improve','improvise','adapt','overcome',
  'generate','randomize','mitigate','overcommit','increase',
  'deliver','lean','fast','modern','stupid','awesome','ugly',
  'attractive','bald','beautiful','elegant','fit','angry','clumsy',
  'grumpy','huge','massive','handsome','skinny','lazy',
  'under-resourced','goal-oriented','time-boxed','cross-functional',
  'self-organized','releasable'
 );

Function StrToCapital(S:String):String;Begin
 If Length(S)=0 Then StrToCapital:=''
                Else StrToCapital:=UpCase(S[1])+Copy(S,2,255);
End;

Function Gauss:Real;
Var
 U,V,X,Y:Real;
Begin
 X:=Random;
 Y:=Random;
 U:=Sqrt(-2*Ln(X))*Cos(2*PI*Y);
 V:=Sqrt(-2*Ln(X))*Sin(2*PI*Y);
 Gauss:=U;
End;

Function GaussMs(M,S:Real):Real;Begin
 GaussMs:=Gauss+S+M;
End;

Function GaussSentence:Integer;Begin
 GaussSentence:=Round(GaussMs(2.460,5.080));
End;

Procedure GetWords(Count:Integer;LoremIpsum:Boolean);
Var
 I,NumWord,_Index,LenSentence:Integer;
 Capital:Boolean;
 LastWord:String;
Begin
 Capital:=True;
 LenSentence:=GaussSentence;
 I:=0;NumWord:=0;
 If(LoremIpsum)Then Begin
  I:=2;
  Write('Agile ');
  Write('Ipsum ');
  NumWord:=2;
 End;
 While(I<Count)do Begin
  _Index:=Random(High(Words));
  If LastWord=StrPas(Words[_Index])Then _Index:=Random(High(Words));
  If(Capital)Then Begin
   Write(StrToCapital(StrPas(Words[_Index])));
   Capital:=False;
  End
   Else
  Write(StrPas(Words[_Index]));
  If I+1<Count Then Begin
   If NumWord>=LenSentence Then Begin
    LenSentence:=GaussSentence;
    Case Random(2) of
     0:Write(', ');
     1:Begin
      Write('. ');
      Capital:=True;
     End;
    End;
    NumWord:=0;
   End
    Else
   Begin
    Write(' ');
    Inc(NumWord);
    Capital:=False;
   End;
  End;
  LastWord:=StrPas(Words[_Index]);
  Inc(I);
 End;
 Write('.');
End;

Var
 Len,I:Integer;
 Err:Word;


BEGIN
 If(ParamStr(1)='/?')or(ParamStr(1)='--help')or(ParamStr(1)='-h')or
   (ParamStr(1)='/h')or(ParamStr(1)='/H')Then Begin
  WriteLn('AGILE : Cette commande permet de gÇnÇrer du ',
                      'texte alÇatoirement sur la mÇthodologie ',
                      'd''agilitÇ (Agile Ipsum).');
  WriteLn;
  WriteLn('Syntaxe : AGILE longueur');
  WriteLn;
  WriteLn(' longueur  Ce parametre permet d''indiquer le nombre de mots a gÇnÇrer');
 End
  Else
 If ParamCount>0Then Begin
  Randomize;
  For I:=1 to ParamCount do Begin
   Val(ParamStr(I),Len,Err);
   If Err>0Then Begin
    WriteLn('Valeur invalide');
    Halt;
   End;
   GetWords(Len,I=1);
   If ParamCount>1 Then Begin
    WriteLn;
    WriteLn;
   End;
  End;
 End
  Else
 WriteLn('Paramätre requis');
END.


