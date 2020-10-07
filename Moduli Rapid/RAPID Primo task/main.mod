MODULE Module1
    CONST robtarget Home:=[[331.583642938,298.173285223,155.241800548],[0.152146153,0.90698621,-0.326350767,0.21845535],[-1,1,-1,4],[126.569998941,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget AbovePickPosition:=[[330.40595962,-4.47168768,138.85283443],[0,0,1,0],[-1,2,-1,4],[126.569998941,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PickPosition:=[[330.40595962,-4.47168768,68.85283443],[0,0,1,0],[-1,2,-1,4],[126.569998941,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget AbovePlacePosition:=[[396.44095962,-4.47168768,138.85283443],[0,0,1,0],[-1,2,-1,4],[126.570000789,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PlacePosition:=[[396.44095962,-4.47168768,68.85283443],[0,0,1,0],[-1,2,-1,4],[126.570000789,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PlacePosition_left:=[[341.64795962,-5.27668768,199.09983443],[0,0.707106781,0.707106781,0],[-1,2,-1,4],[137.973799686,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
    !***************************
    !*Autore: Leonardo Testolin*
    !***************************
    
    PROC main()
        Path_10;
    ENDPROC
    PROC Path_10()
        Reset GripperLeft;
        MoveL Home,v1000,fine,Servo\WObj:=wobj0;
        MoveL AbovePickPosition,v1000,fine,Servo\WObj:=wobj0;
        MoveL PickPosition,v1000,fine,Servo\WObj:=wobj0;
        Set GripperLeft;
        MoveL AbovePickPosition,v1000,fine,Servo\WObj:=wobj0;
        MoveL AbovePlacePosition,v1000,fine,Servo\WObj:=wobj0;
        MoveL PlacePosition,v1000,fine,Servo\WObj:=wobj0;
        Reset GripperLeft;
        MoveL AbovePlacePosition,v1000,fine,Servo\WObj:=wobj0;
        MoveL PlacePosition,v1000,fine,Servo\WObj:=wobj0;
        Set GripperLeft;
        MoveL AbovePickPosition,v1000,fine,Servo\WObj:=wobj0;
        MoveL PickPosition,v1000,fine,Servo\WObj:=wobj0;
        Reset GripperLeft;
        MoveL Home,v1000,fine,Servo\WObj:=wobj0;
    ENDPROC
ENDMODULE