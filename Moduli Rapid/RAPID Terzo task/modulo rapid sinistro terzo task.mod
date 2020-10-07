MODULE Module1
    CONST robtarget Home:=[[331.583642938,298.173285223,155.241800548],[0.152146153,0.90698621,-0.326350767,0.21845535],[-1,1,-1,4],[126.569998941,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget AbovePickPosition:=[[330.40595962,-4.47168768,138.85283443],[0,0,1,0],[-1,2,-1,4],[126.569998941,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PickPosition:=[[330.40595962,-4.47168768,68.85283443],[0,0,1,0],[1,-1,1,1],[126.569998941,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget AbovePlacePosition:=[[396.44095962,-4.47168768,138.85283443],[0,0,1,0],[-1,2,-1,4],[126.570000789,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PlacePosition:=[[396.44095962,-4.47168768,68.85283443],[0,0,1,0],[-1,2,-1,4],[126.570000789,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Home_left:=[[286.852347955,266.470487054,281.153696777],[0.00598858,0.507597157,-0.861507566,-0.010675991],[0,1,-1,4],[137.973785797,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget AbovePickPosition_left:=[[330.40595962,84.63531232,118.85283443],[0,0,1,0],[-1,2,0,4],[126.569985646,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PickPosition_left:=[[341.64795962,325.02431232,241.59683443],[0,0,-0.707106781,0.707106781],[-1,0,0,4],[137.973796784,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget AbovePlacePosition_left:=[[429.18295962,-4.17568768,118.85283443],[0,0,1,0],[-1,2,-1,4],[126.569991153,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PlacePosition_left:=[[341.64795962,-5.27668768,199.09983443],[0,0.707106781,0.707106781,0],[-1,2,-1,4],[137.973799686,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget AbovePlaceotherPosition_left:=[[330.13895962,-4.17568768,118.85283443],[0,0,1,0],[-1,2,-1,4],[126.569986508,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PlaceotherPosition_left:=[[330.13895962,-4.17568768,68.85283443],[0,0,1,0],[-1,2,-1,4],[126.569986508,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
    !***************************
    !*Autore: Leonardo Testolin*
    !***************************
    
    PROC main()
        Path_threetask_left;
    ENDPROC
    PROC Path_threetask_left()
        Reset GripperLeft;
        MoveL Home_left,v1000,fine,tool0\WObj:=wobj0;
        WaitTime 4;
        MoveL PickPosition_left,v1000,fine,tool0\WObj:=wobj0;
        Set GripperLeft;
        WaitTime 3;
        MoveL PlacePosition_left,v1000,fine,tool0\WObj:=wobj0;
        Reset GripperLeft;
        MoveL Home_left,v1000,fine,tool0\WObj:=wobj0;
    ENDPROC
ENDMODULE