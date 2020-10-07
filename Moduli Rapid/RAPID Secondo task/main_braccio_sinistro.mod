MODULE Module1
    CONST robtarget Home:=[[331.583642938,298.173285223,155.241800548],[0.152146153,0.90698621,-0.326350767,0.21845535],[-1,1,-1,4],[126.569998941,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget AbovePickPosition:=[[330.40595962,-4.47168768,138.85283443],[0,0,1,0],[-1,2,-1,4],[126.569998941,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PickPosition:=[[330.40595962,-4.47168768,68.85283443],[0,0,1,0],[1,-1,1,1],[126.569998941,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget AbovePlacePosition:=[[396.44095962,-4.47168768,138.85283443],[0,0,1,0],[-1,2,-1,4],[126.570000789,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PlacePosition:=[[396.44095962,-4.47168768,68.85283443],[0,0,1,0],[-1,2,-1,4],[126.570000789,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Home_left:=[[330.582225901,298.171666599,155.236756168],[0.152187296,0.90697999,-0.326345517,0.218460359],[-1,1,-1,4],[126.569982747,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget AbovePickPosition_left:=[[330.40595962,84.63531232,118.85283443],[0,0,1,0],[-1,2,0,4],[126.569985646,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PickPosition_left:=[[330.40595962,84.63531232,68.85283443],[0,0,1,0],[-1,2,0,4],[126.569985646,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget AbovePlacePosition_left:=[[429.18295962,-4.17568768,118.85283443],[0,0,1,0],[-1,2,-1,4],[126.569991153,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PlacePosition_left:=[[429.18295962,-4.17568768,68.85283443],[0,0,1,0],[-1,2,-1,4],[126.569991153,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget AbovePlaceotherPosition_left:=[[330.13895962,-4.17568768,118.85283443],[0,0,1,0],[-1,2,-1,4],[126.569986508,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PlaceotherPosition_left:=[[330.13895962,-4.17568768,68.85283443],[0,0,1,0],[-1,2,-1,4],[126.569986508,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
    !***************************
    !*Autore: Leonardo Testolin*
    !***************************

    PROC main()
        Path_Left;
    ENDPROC
    PROC Path_left()
        Reset GripperLeft;
        MoveL Home_left,v1000,fine,Servo\WObj:=wobj0;
        MoveL AbovePickPosition_left,v1000,fine,Servo\WObj:=wobj0;
        MoveL PickPosition_left,v1000,fine,Servo\WObj:=wobj0;
        Set GripperLeft;
        MoveL AbovePickPosition_left,v1000,fine,Servo\WObj:=wobj0;
        MoveL AbovePlacePosition_left,v1000,fine,Servo\WObj:=wobj0;
        MoveL PlacePosition_left,v1000,fine,Servo\WObj:=wobj0;
        Reset GripperLeft;
        MoveL AbovePlacePosition_left,v1000,fine,Servo\WObj:=wobj0;
        MoveL AbovePickPosition_left,v1000,fine,Servo\WObj:=wobj0;
        WaitTime 4;
        MoveL AbovePlaceotherPosition_left,v1000,fine,Servo\WObj:=wobj0;
        MoveL PlaceotherPosition_left,v1000,fine,Servo\WObj:=wobj0;
        Set GripperLeft;
        MoveL AbovePlaceotherPosition_left,v1000,fine,Servo\WObj:=wobj0;
        MoveL AbovePickPosition_left,v1000,fine,Servo\WObj:=wobj0;
        MoveL PickPosition_left,v1000,fine,Servo\WObj:=wobj0;
        Reset GripperLeft;
        MoveL AbovePickPosition_left,v1000,fine,Servo\WObj:=wobj0;
    ENDPROC
ENDMODULE