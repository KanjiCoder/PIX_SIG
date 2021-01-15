################################################################
##SHORTCUT[ HKMF_C11_CLUNKY_BUT_EXPLANATORY ]###################
################################################################



    base_name_no_extension="PIX_SIG"    
    
    
            
################################################################ 
##                                                            ##
##  INDENTING_HEREDOC__WILL_CAUSE_SCRIPT_TO_FAIL:BELOW        ##
##  COMMENT_CHARACTERS_WILL_CAUSE_SCRIPT_TO_FAIL:BELOW        ##
##                                                            ##
################################################################
MY_COMMAND_STRING=$(cat << GCC_COMMAND_01
    gcc                                     
    -x c                                    
    -c $base_name_no_extension.C11          
    -o my_object_file.o                     
    -m64                                    
GCC_COMMAND_01
)          
################################################################ 
##                                                            ##
##  INDENTING_HEREDOC__WILL_CAUSE_SCRIPT_TO_FAIL:ABOVE        ##
##  COMMENT_CHARACTERS_WILL_CAUSE_SCRIPT_TO_FAIL:ABOVE        ##
##                                                            ##
################################################################                                                                  
    C=$MY_COMMAND_STRING  ######################################
    C=$C"-Werror                 " ## WarningsAreErrors       ##
    C=$C"-Wfatal-errors          " ## StopAtFirstError        ##
    C=$C"-Wpedantic              " ## UseStrictISO_C          ##
    C=$C"-Wall                   " ## WarnAboutAnyWeirdCode   ##
    C=$C"-Wextra                 " ## "-Wall" WarningsExtra   ##
    ##-----------------------------##                         ##
    C=$C"-fstrict-aliasing       " ## Unique Pointer Params   ##
    C=$C"-Wstrict-aliasing       " ## Unique Types At Address ##
    ##-----------------------------##                         ##
    C=$C"-Wno-overlength-strings " ## Long Strings Okay       ##
    ##-----------------------------##                         ##
    C=$C"-std=c11                " ## VersionOf_C_ToUse       ##
    MY_COMMAND_STRING=$C  ######################################
                                            ##                ##
    echo $MY_COMMAND_STRING       ## Inspect Command String   ##          
         $MY_COMMAND_STRING       ## Compile The Code         ##
                                            ##                ##
                                            ##                ##
    C1=" gcc -o PIX_SIG.exe my_object_file.o "  ## <-- Link   ##
    C2=" ./PIX_SIG.exe                       "  ## <-- Run    ##
    C3=" rm my_object_file.o             "  ## <-- Remove     ##
##  C4=" rm PIX_SIG.exe                  "  ## <-- Remove     ##
    $C1 && echo "OK:"$C1 || "FAIL:$C1"      ##                ##
    $C2 && echo "OK:"$C2 || "FAIL:$C2"      ##                ##
    $C3 && echo "OK:"$C3 || "FAIL:$C3"      ##                ##
    $C4 && echo "OK:"$C4 || "FAIL:$C4"      ##                ##
    ############################################################
    read -p "[END_OF_BUILD_SCRIPT:PressAnyKey]:"              ##
    ############################################################
    ############################################################
    ##                                                        ##
    ## NOTES:                                                 ##
    ## -fstrict-aliasing                                      ##
    ##                                                        ##
    ##      https://www.approxion.com/                        ##
    ##      pointers-c-part-iii-strict-aliasing-rule/         ##
    ##                                                        ##
    ##                                                        ##
    ##      https://gcc.gnu.org/onlinedocs/gcc/               ##
    ##                     Optimize-Options.html              ##
    ##                     #Optimize-Options                  ##
    ##                                                        ##
################################################################
##SHORTCUT[ HKMF_C11_CLUNKY_BUT_EXPLANATORY ]###################
################################################################