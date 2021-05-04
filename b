BASH(1)                                                            General Commands Manual                                                           BASH(1)

NNAAMMEE
       bash - GNU Bourne-Again SHell

SSYYNNOOPPSSIISS
       bbaasshh [options] [command_string | file]

CCOOPPYYRRIIGGHHTT
       Bash is Copyright (C) 1989-2020 by the Free Software Foundation, Inc.

DDEESSCCRRIIPPTTIIOONN
       BBaasshh  is  an  sshh-compatible  command language interpreter that executes commands read from the standard input or from a file.  BBaasshh also incorporates
       useful features from the _K_o_r_n and _C shells (kksshh and ccsshh).

       BBaasshh is intended to be a conformant implementation of the Shell and Utilities portion of the IEEE POSIX specification (IEEE Standard  1003.1).   BBaasshh
       can be configured to be POSIX-conformant by default.

OOPPTTIIOONNSS
       All  of  the  single-character  shell options documented in the description of the sseett builtin command, including --oo, can be used as options when the
       shell is invoked.  In addition, bbaasshh interprets the following options when it is invoked:

       --cc        If the --cc option is present, then commands are read from the first non-option argument _c_o_m_m_a_n_d___s_t_r_i_n_g.  If there are  arguments  after  the
                 _c_o_m_m_a_n_d___s_t_r_i_n_g, the first argument is assigned to $$00 and any remaining arguments are assigned to the positional parameters.  The assignment
                 to $$00 sets the name of the shell, which is used in warning and error messages.
       --ii        If the --ii option is present, the shell is _i_n_t_e_r_a_c_t_i_v_e.
       --ll        Make bbaasshh act as if it had been invoked as a login shell (see IINNVVOOCCAATTIIOONN below).
       --rr        If the --rr option is present, the shell becomes _r_e_s_t_r_i_c_t_e_d (see RREESSTTRRIICCTTEEDD SSHHEELLLL below).
       --ss        If the --ss option is present, or if no arguments remain after option processing, then commands are read from the standard input.   This  op‐
                 tion allows the positional parameters to be set when invoking an interactive shell or when reading input through a pipe.
       --DD        A  list  of  all double-quoted strings preceded by $$ is printed on the standard output.  These are the strings that are subject to language
                 translation when the current locale is not CC or PPOOSSIIXX.  This implies the --nn option; no commands will be executed.
       [[--++]]OO [[_s_h_o_p_t___o_p_t_i_o_n]]
                 _s_h_o_p_t___o_p_t_i_o_n is one of the shell options accepted by the sshhoopptt builtin (see SSHHEELLLL BBUUIILLTTIINN CCOOMMMMAANNDDSS below).  If _s_h_o_p_t___o_p_t_i_o_n is present,  --OO
                 sets  the value of that option; ++OO unsets it.  If _s_h_o_p_t___o_p_t_i_o_n is not supplied, the names and values of the shell options accepted by sshhoopptt
                 are printed on the standard output.  If the invocation option is ++OO, the output is displayed in a format that may be reused as input.
       ----        A ---- signals the end of options and disables further option processing.  Any arguments after the ---- are treated as filenames and arguments.
                 An argument of -- is equivalent to ----.

       BBaasshh  also  interprets  a number of multi-character options.  These options must appear on the command line before the single-character options to be
       recognized.

       ----ddeebbuuggggeerr
              Arrange for the debugger profile to be executed before the shell starts.  Turns on extended debugging mode (see the description of the  eexxttddee‐‐
              bbuugg option to the sshhoopptt builtin below).
       ----dduummpp--ppoo--ssttrriinnggss
              Equivalent to --DD, but the output is in the GNU _g_e_t_t_e_x_t ppoo (portable object) file format.
       ----dduummpp--ssttrriinnggss
              Equivalent to --DD.
       ----hheellpp Display a usage message on standard output and exit successfully.
       ----iinniitt--ffiillee _f_i_l_e
       ----rrccffiillee _f_i_l_e
              Execute commands from _f_i_l_e instead of the standard personal initialization file _~_/_._b_a_s_h_r_c if the shell is interactive (see IINNVVOOCCAATTIIOONN below).

       ----llooggiinn
              Equivalent to --ll.

       ----nnooeeddiittiinngg
              Do not use the GNU rreeaaddlliinnee library to read command lines when the shell is interactive.

       ----nnoopprrooffiillee
              Do  not  read  either the system-wide startup file _/_e_t_c_/_p_r_o_f_i_l_e or any of the personal initialization files _~_/_._b_a_s_h___p_r_o_f_i_l_e, _~_/_._b_a_s_h___l_o_g_i_n, or
              _~_/_._p_r_o_f_i_l_e.  By default, bbaasshh reads these files when it is invoked as a login shell (see IINNVVOOCCAATTIIOONN below).

       ----nnoorrcc Do not read and execute the personal initialization file _~_/_._b_a_s_h_r_c if the shell is interactive.  This option is on by default if the shell  is
              invoked as sshh.

       ----ppoossiixx
              Change  the behavior of bbaasshh where the default operation differs from the POSIX standard to match the standard (_p_o_s_i_x _m_o_d_e).  See SSEEEE AALLSSOO be‐
              low for a reference to a document that details how posix mode affects bash's behavior.

       ----rreessttrriicctteedd
              The shell becomes restricted (see RREESSTTRRIICCTTEEDD SSHHEELLLL below).

       ----vveerrbboossee
              Equivalent to --vv.

       ----vveerrssiioonn
              Show version information for this instance of bbaasshh on the standard output and exit successfully.

AARRGGUUMMEENNTTSS
       If arguments remain after option processing, and neither the --cc nor the --ss option has been supplied, the first argument is assumed to be the name  of
       a  file  containing  shell commands.  If bbaasshh is invoked in this fashion, $$00 is set to the name of the file, and the positional parameters are set to
       the remaining arguments.  BBaasshh reads and executes commands from this file, then exits.  BBaasshh's exit status is the exit status of the last command ex‐
       ecuted  in  the script.  If no commands are executed, the exit status is 0.  An attempt is first made to open the file in the current directory, and,
       if no file is found, then the shell searches the directories in PPAATTHH for the script.

IINNVVOOCCAATTIIOONN
       A _l_o_g_i_n _s_h_e_l_l is one whose first character of argument zero is a --, or one started with the ----llooggiinn option.

       An _i_n_t_e_r_a_c_t_i_v_e shell is one started without non-option arguments (unless --ss is specified) and without the --cc option whose standard  input  and  error
       are  both  connected  to terminals (as determined by _i_s_a_t_t_y(3)), or one started with the --ii option.  PPSS11 is set and $$-- includes ii if bbaasshh is interac‐
       tive, allowing a shell script or a startup file to test this state.

       The following paragraphs describe how bbaasshh executes its startup files.  If any of the files exist but cannot be read, bbaasshh reports an error.   Tildes
       are expanded in filenames as described below under TTiillddee EExxppaannssiioonn in the EEXXPPAANNSSIIOONN section.

       When  bbaasshh is invoked as an interactive login shell, or as a non-interactive shell with the ----llooggiinn option, it first reads and executes commands from
       the file _/_e_t_c_/_p_r_o_f_i_l_e, if that file exists.  After reading that file, it looks for _~_/_._b_a_s_h___p_r_o_f_i_l_e, _~_/_._b_a_s_h___l_o_g_i_n, and _~_/_._p_r_o_f_i_l_e, in that order, and
       reads  and executes commands from the first one that exists and is readable.  The ----nnoopprrooffiillee option may be used when the shell is started to inhibit
       this behavior.

       When an interactive login shell exits, or a non-interactive login shell executes the eexxiitt builtin command, bbaasshh reads and executes commands from  the
       file _~_/_._b_a_s_h___l_o_g_o_u_t, if it exists.

       When  an  interactive  shell that is not a login shell is started, bbaasshh reads and executes commands from _~_/_._b_a_s_h_r_c, if that file exists.  This may be
       inhibited by using the ----nnoorrcc option.  The ----rrccffiillee _f_i_l_e option will force bbaasshh to read and execute commands from _f_i_l_e instead of _~_/_._b_a_s_h_r_c.

       When bbaasshh is started non-interactively, to run a shell script, for example, it looks for the variable BBAASSHH__EENNVV in the environment, expands its  value
       if it appears there, and uses the expanded value as the name of a file to read and execute.  BBaasshh behaves as if the following command were executed:
              if [ -n "$BASH_ENV" ]; then . "$BASH_ENV"; fi
       but the value of the PPAATTHH variable is not used to search for the filename.

       If  bbaasshh is invoked with the name sshh, it tries to mimic the startup behavior of historical versions of sshh as closely as possible, while conforming to
       the POSIX standard as well.  When invoked as an interactive login shell, or a non-interactive shell with the ----llooggiinn option,  it  first  attempts  to
       read  and  execute  commands from _/_e_t_c_/_p_r_o_f_i_l_e and _~_/_._p_r_o_f_i_l_e, in that order.  The ----nnoopprrooffiillee option may be used to inhibit this behavior.  When in‐
       voked as an interactive shell with the name sshh, bbaasshh looks for the variable EENNVV, expands its value if it is defined, and uses the expanded  value  as
       the  name of a file to read and execute.  Since a shell invoked as sshh does not attempt to read and execute commands from any other startup files, the
       ----rrccffiillee option has no effect.  A non-interactive shell invoked with the name sshh does not attempt to read any other startup files.  When  invoked  as
       sshh, bbaasshh enters _p_o_s_i_x mode after the startup files are read.

       When bbaasshh is started in _p_o_s_i_x mode, as with the ----ppoossiixx command line option, it follows the POSIX standard for startup files.  In this mode, interac‐
       tive shells expand the EENNVV variable and commands are read and executed from the file whose name is the expanded value.  No other  startup  files  are
       read.

       BBaasshh  attempts to determine when it is being run with its standard input connected to a network connection, as when executed by the remote shell dae‐
       mon, usually _r_s_h_d, or the secure shell daemon _s_s_h_d.  If bbaasshh determines it is being run  in  this  fashion,  it  reads  and  executes  commands  from
       _~_/_._b_a_s_h_r_c,  if  that file exists and is readable.  It will not do this if invoked as sshh.  The ----nnoorrcc option may be used to inhibit this behavior, and
       the ----rrccffiillee option may be used to force another file to be read, but neither _r_s_h_d nor _s_s_h_d generally invoke the shell with those  options  or  allow
       them to be specified.

       If the shell is started with the effective user (group) id not equal to the real user (group) id, and the --pp option is not supplied, no startup files
       are read, shell functions are not inherited from the environment, the SSHHEELLLLOOPPTTSS, BBAASSHHOOPPTTSS, CCDDPPAATTHH, and GGLLOOBBIIGGNNOORREE variables, if they  appear  in  the
       environment,  are ignored, and the effective user id is set to the real user id.  If the --pp option is supplied at invocation, the startup behavior is
       the same, but the effective user id is not reset.

DDEEFFIINNIITTIIOONNSS
       The following definitions are used throughout the rest of this document.
       bbllaannkk  A space or tab.
       wwoorrdd   A sequence of characters considered as a single unit by the shell.  Also known as a ttookkeenn.
       nnaammee   A _w_o_r_d consisting only of alphanumeric characters and underscores, and beginning with an alphabetic character or an underscore.  Also referred
              to as an iiddeennttiiffiieerr.
       mmeettaacchhaarraacctteerr
              A character that, when unquoted, separates words.  One of the following:
              ||  && ;; (( )) << >> ssppaaccee ttaabb nneewwlliinnee
       ccoonnttrrooll ooppeerraattoorr
              A _t_o_k_e_n that performs a control function.  It is one of the following symbols:
              |||| && &&&& ;; ;;;; ;;&& ;;;;&& (( )) || ||&& <<nneewwlliinnee>>

RREESSEERRVVEEDD WWOORRDDSS
       _R_e_s_e_r_v_e_d _w_o_r_d_s are words that have a special meaning to the shell.  The following words are recognized as reserved when unquoted and either the first
       word of a command (see SSHHEELLLL GGRRAAMMMMAARR below), the third word of a ccaassee or sseelleecctt command (only iinn is valid), or the third word of a ffoorr command  (only
       iinn and ddoo are valid):

       !! ccaassee  ccoopprroocc  ddoo ddoonnee eelliiff eellssee eessaacc ffii ffoorr ffuunnccttiioonn iiff iinn sseelleecctt tthheenn uunnttiill wwhhiillee {{ }} ttiimmee [[[[ ]]]]

SSHHEELLLL GGRRAAMMMMAARR
   SSiimmppllee CCoommmmaannddss
       A _s_i_m_p_l_e _c_o_m_m_a_n_d is a sequence of optional variable assignments followed by bbllaannkk-separated words and redirections, and terminated by a _c_o_n_t_r_o_l _o_p_e_r_‐
       _a_t_o_r.  The first word specifies the command to be executed, and is passed as argument zero.  The remaining words are passed as arguments to  the  in‐
       voked command.

       The return value of a _s_i_m_p_l_e _c_o_m_m_a_n_d is its exit status, or 128+_n if the command is terminated by signal _n.

   PPiippeelliinneess
       A _p_i_p_e_l_i_n_e is a sequence of one or more commands separated by one of the control operators || or ||&&.  The format for a pipeline is:

              [ttiimmee [--pp]] [ ! ] _c_o_m_m_a_n_d [ [||⎪||&&] _c_o_m_m_a_n_d_2 ... ]

       The standard output of _c_o_m_m_a_n_d is connected via a pipe to the standard input of _c_o_m_m_a_n_d_2.  This connection is performed before any redirections spec‐
       ified by the command (see RREEDDIIRREECCTTIIOONN below).  If ||&& is used, _c_o_m_m_a_n_d's standard error, in addition to its standard  output,  is  connected  to  _c_o_m_‐
       _m_a_n_d_2's  standard input through the pipe; it is shorthand for 22>>&&11 ||.  This implicit redirection of the standard error to the standard output is per‐
       formed after any redirections specified by the command.

       The return status of a pipeline is the exit status of the last command, unless the ppiippeeffaaiill option is enabled.  If ppiippeeffaaiill  is  enabled,  the  pipe‐
       line's  return status is the value of the last (rightmost) command to exit with a non-zero status, or zero if all commands exit successfully.  If the
       reserved word !!  precedes a pipeline, the exit status of that pipeline is the logical negation of the exit status  as  described  above.   The  shell
       waits for all commands in the pipeline to terminate before returning a value.

       If  the  ttiimmee reserved word precedes a pipeline, the elapsed as well as user and system time consumed by its execution are reported when the pipeline
       terminates.  The --pp option changes the output format to that specified by POSIX.  When the shell is in _p_o_s_i_x _m_o_d_e, it does not recognize  ttiimmee  as  a
       reserved  word  if the next token begins with a `-'.  The TTIIMMEEFFOORRMMAATT variable may be set to a format string that specifies how the timing information
       should be displayed; see the description of TTIIMMEEFFOORRMMAATT under SShheellll VVaarriiaabblleess below.

       When the shell is in _p_o_s_i_x _m_o_d_e, ttiimmee may be followed by a newline.  In this case, the shell displays the total user and system time consumed by  the
       shell and its children.  The TTIIMMEEFFOORRMMAATT variable may be used to specify the format of the time information.

       Each  command  in  a pipeline is executed as a separate process (i.e., in a subshell).  See CCOOMMMMAANNDD EEXXEECCUUTTIIOONN EENNVVIIRROONNMMEENNTT for a description of a sub‐
       shell environment.  If the llaassttppiippee option is enabled using the sshhoopptt builtin (see the description of sshhoopptt below), the last element  of  a  pipeline
       may be run by the shell process.

   LLiissttss
       A  _l_i_s_t  is a sequence of one or more pipelines separated by one of the operators ;;, &&, &&&&, or ||||, and optionally terminated by one of ;;, &&, or <<nneeww‐‐
       lliinnee>>.

       Of these list operators, &&&& and |||| have equal precedence, followed by ;; and &&, which have equal precedence.

       A sequence of one or more newlines may appear in a _l_i_s_t instead of a semicolon to delimit commands.

       If a command is terminated by the control operator &&, the shell executes the command in the _b_a_c_k_g_r_o_u_n_d in a subshell.  The shell does  not  wait  for
       the  command  to finish, and the return status is 0.  These are referred to as _a_s_y_n_c_h_r_o_n_o_u_s commands.  Commands separated by a ;; are executed sequen‐
       tially; the shell waits for each command to terminate in turn.  The return status is the exit status of the last command executed.

       AND and OR lists are sequences of one or more pipelines separated by the &&&& and |||| control operators, respectively.  AND and OR  lists  are  executed
       with left associativity.  An AND list has the form

              _c_o_m_m_a_n_d_1 &&&& _c_o_m_m_a_n_d_2

       _c_o_m_m_a_n_d_2 is executed if, and only if, _c_o_m_m_a_n_d_1 returns an exit status of zero (success).

       An OR list has the form

              _c_o_m_m_a_n_d_1 |||| _c_o_m_m_a_n_d_2

       _c_o_m_m_a_n_d_2  is executed if, and only if, _c_o_m_m_a_n_d_1 returns a non-zero exit status.  The return status of AND and OR lists is the exit status of the last
       command executed in the list.

   CCoommppoouunndd CCoommmmaannddss
       A _c_o_m_p_o_u_n_d _c_o_m_m_a_n_d is one of the following.  In most cases a _l_i_s_t in a command's description may be separated from the rest of the command by one  or
       more newlines, and may be followed by a newline in place of a semicolon.

       (_l_i_s_t) _l_i_s_t  is  executed in a subshell environment (see CCOOMMMMAANNDD EEXXEECCUUTTIIOONN EENNVVIIRROONNMMEENNTT below).  Variable assignments and builtin commands that affect
              the shell's environment do not remain in effect after the command completes.  The return status is the exit status of _l_i_s_t.

       { _l_i_s_t; }
              _l_i_s_t is simply executed in the current shell environment.  _l_i_s_t must be terminated with a newline or semicolon.  This is known as a _g_r_o_u_p _c_o_m_‐
              _m_a_n_d.   The  return status is the exit status of _l_i_s_t.  Note that unlike the metacharacters (( and )), {{ and }} are _r_e_s_e_r_v_e_d _w_o_r_d_s and must occur
              where a reserved word is permitted to be recognized.  Since they do not cause a word break, they must be separated from _l_i_s_t by whitespace  or
              another shell metacharacter.

       ((_e_x_p_r_e_s_s_i_o_n))
              The  _e_x_p_r_e_s_s_i_o_n  is evaluated according to the rules described below under AARRIITTHHMMEETTIICC EEVVAALLUUAATTIIOONN.  If the value of the expression is non-zero,
              the return status is 0; otherwise the return status is 1.  This is exactly equivalent to lleett ""_e_x_p_r_e_s_s_i_o_n"".

       [[[[ _e_x_p_r_e_s_s_i_o_n ]]]]
              Return a status of 0 or 1 depending on the evaluation of the conditional expression _e_x_p_r_e_s_s_i_o_n.  Expressions are composed of the primaries de‐
              scribed  below  under  CCOONNDDIITTIIOONNAALL  EEXXPPRREESSSSIIOONNSS.   Word splitting and pathname expansion are not performed on the words between the [[[[ and ]]]];
              tilde expansion, parameter and variable expansion, arithmetic expansion, command substitution, process substitution,  and  quote  removal  are
              performed.  Conditional operators such as --ff must be unquoted to be recognized as primaries.

              When used with [[[[, the << and >> operators sort lexicographically using the current locale.

              When  the ==== and !!== operators are used, the string to the right of the operator is considered a pattern and matched according to the rules de‐
              scribed below under PPaatttteerrnn MMaattcchhiinngg, as if the eexxttgglloobb shell option were enabled.  The == operator is equivalent to ====.   If  the  nnooccaasseemmaattcchh
              shell  option  is  enabled,  the  match is performed without regard to the case of alphabetic characters.  The return value is 0 if the string
              matches (====) or does not match (!!==) the pattern, and 1 otherwise.  Any part of the pattern may be quoted to force the  quoted  portion  to  be
              matched as a string.

              An additional binary operator, ==~~, is available, with the same precedence as ==== and !!==.  When it is used, the string to the right of the oper‐
              ator is considered a POSIX extended regular expression and matched accordingly (using the POSIX _r_e_g_c_o_m_p and  _r_e_g_e_x_e_c  interfaces  usually  de‐
              scribed  in  _r_e_g_e_x(3)).  The return value is 0 if the string matches the pattern, and 1 otherwise.  If the regular expression is syntactically
              incorrect, the conditional expression's return value is 2.  If the nnooccaasseemmaattcchh shell option is enabled, the match is performed without  regard
              to  the  case of alphabetic characters.  Any part of the pattern may be quoted to force the quoted portion to be matched as a string.  Bracket
              expressions in regular expressions must be treated carefully, since normal quoting characters lose their meanings between  brackets.   If  the
              pattern is stored in a shell variable, quoting the variable expansion forces the entire pattern to be matched as a string.

              The pattern will match if it matches any part of the string.  Anchor the pattern using the ^^ and $$ regular expression operators to force it to
              match the entire string.  The array variable BBAASSHH__RREEMMAATTCCHH records which parts of the string matched the pattern.  The element of  BBAASSHH__RREEMMAATTCCHH
              with  index  0  contains the portion of the string matching the entire regular expression.  Substrings matched by parenthesized subexpressions
              within the regular expression are saved in the remaining BBAASSHH__RREEMMAATTCCHH indices. The element of BBAASSHH__RREEMMAATTCCHH with index _n is the portion of  the
              string matching the _nth parenthesized subexpression.

              Expressions may be combined using the following operators, listed in decreasing order of precedence:

              (( _e_x_p_r_e_s_s_i_o_n ))
                     Returns the value of _e_x_p_r_e_s_s_i_o_n.  This may be used to override the normal precedence of operators.
              !! _e_x_p_r_e_s_s_i_o_n
                     True if _e_x_p_r_e_s_s_i_o_n is false.
              _e_x_p_r_e_s_s_i_o_n_1 &&&& _e_x_p_r_e_s_s_i_o_n_2
                     True if both _e_x_p_r_e_s_s_i_o_n_1 and _e_x_p_r_e_s_s_i_o_n_2 are true.
              _e_x_p_r_e_s_s_i_o_n_1 |||| _e_x_p_r_e_s_s_i_o_n_2
                     True if either _e_x_p_r_e_s_s_i_o_n_1 or _e_x_p_r_e_s_s_i_o_n_2 is true.

              The &&&& and |||| operators do not evaluate _e_x_p_r_e_s_s_i_o_n_2 if the value of _e_x_p_r_e_s_s_i_o_n_1 is sufficient to determine the return value of the entire con‐
              ditional expression.

       ffoorr _n_a_m_e [ [ iinn [ _w_o_r_d _._._. ] ] ; ] ddoo _l_i_s_t ; ddoonnee
              The list of words following iinn is expanded, generating a list of items.  The variable _n_a_m_e is set to each element of this list  in  turn,  and
              _l_i_s_t  is executed each time.  If the iinn _w_o_r_d is omitted, the ffoorr command executes _l_i_s_t once for each positional parameter that is set (see PPAA‐‐
              RRAAMMEETTEERRSS below).  The return status is the exit status of the last command that executes.  If the expansion of the items following iinn  results
              in an empty list, no commands are executed, and the return status is 0.

       ffoorr (( _e_x_p_r_1 ; _e_x_p_r_2 ; _e_x_p_r_3 )) ; ddoo _l_i_s_t ; ddoonnee
              First,  the  arithmetic  expression _e_x_p_r_1 is evaluated according to the rules described below under AARRIITTHHMMEETTIICC EEVVAALLUUAATTIIOONN.  The arithmetic ex‐
              pression _e_x_p_r_2 is then evaluated repeatedly until it evaluates to zero.  Each time _e_x_p_r_2 evaluates to a non-zero value, _l_i_s_t is  executed  and
              the arithmetic expression _e_x_p_r_3 is evaluated.  If any expression is omitted, it behaves as if it evaluates to 1.  The return value is the exit
              status of the last command in _l_i_s_t that is executed, or false if any of the expressions is invalid.

       sseelleecctt _n_a_m_e [ iinn _w_o_r_d ] ; ddoo _l_i_s_t ; ddoonnee
              The list of words following iinn is expanded, generating a list of items.  The set of expanded words is printed on the standard error, each pre‐
              ceded by a number.  If the iinn _w_o_r_d is omitted, the positional parameters are printed (see PPAARRAAMMEETTEERRSS below).  The PPSS33 prompt is then displayed
              and a line read from the standard input.  If the line consists of a number corresponding to one of the displayed words, then the value of _n_a_m_e
              is set to that word.  If the line is empty, the words and prompt are displayed again.  If EOF is read, the command completes.  Any other value
              read causes _n_a_m_e to be set to null.  The line read is saved in the variable RREEPPLLYY.  The _l_i_s_t is executed after each selection  until  a  bbrreeaakk
              command is executed.  The exit status of sseelleecctt is the exit status of the last command executed in _l_i_s_t, or zero if no commands were executed.

       ccaassee _w_o_r_d iinn [ [(] _p_a_t_t_e_r_n [ || _p_a_t_t_e_r_n ] ... ) _l_i_s_t ;; ] ... eessaacc
              A ccaassee command first expands _w_o_r_d, and tries to match it against each _p_a_t_t_e_r_n in turn, using the matching rules described under PPaatttteerrnn MMaattcchh‐‐
              iinngg below.  The _w_o_r_d is expanded using tilde expansion, parameter and variable expansion, arithmetic expansion, command substitution,  process
              substitution  and quote removal.  Each _p_a_t_t_e_r_n examined is expanded using tilde expansion, parameter and variable expansion, arithmetic expan‐
              sion, command substitution, and process substitution.  If the nnooccaasseemmaattcchh shell option is enabled, the match is performed  without  regard  to
              the  case  of  alphabetic  characters.   When a match is found, the corresponding _l_i_s_t is executed.  If the ;;;; operator is used, no subsequent
              matches are attempted after the first pattern match.  Using ;;&& in place of ;;;; causes execution to continue with the _l_i_s_t associated  with  the
              next set of patterns.  Using ;;;;&& in place of ;;;; causes the shell to test the next pattern list in the statement, if any, and execute any asso‐
              ciated _l_i_s_t on a successful match, continuing the case statement execution as if the pattern list had not matched.  The exit status is zero if
              no pattern matches.  Otherwise, it is the exit status of the last command executed in _l_i_s_t.

       iiff _l_i_s_t; tthheenn _l_i_s_t; [ eelliiff _l_i_s_t; tthheenn _l_i_s_t; ] ... [ eellssee _l_i_s_t; ] ffii
              The  iiff  _l_i_s_t  is executed.  If its exit status is zero, the tthheenn _l_i_s_t is executed.  Otherwise, each eelliiff _l_i_s_t is executed in turn, and if its
              exit status is zero, the corresponding tthheenn _l_i_s_t is executed and the command completes.  Otherwise, the eellssee _l_i_s_t  is  executed,  if  present.
              The exit status is the exit status of the last command executed, or zero if no condition tested true.

       wwhhiillee _l_i_s_t_-_1; ddoo _l_i_s_t_-_2; ddoonnee
       uunnttiill _l_i_s_t_-_1; ddoo _l_i_s_t_-_2; ddoonnee
              The  wwhhiillee  command  continuously executes the list _l_i_s_t_-_2 as long as the last command in the list _l_i_s_t_-_1 returns an exit status of zero.  The
              uunnttiill command is identical to the wwhhiillee command, except that the test is negated: _l_i_s_t_-_2 is executed as long as the last command in _l_i_s_t_-_1 re‐
              turns  a  non-zero exit status.  The exit status of the wwhhiillee and uunnttiill commands is the exit status of the last command executed in _l_i_s_t_-_2, or
              zero if none was executed.

   CCoopprroocceesssseess
       A _c_o_p_r_o_c_e_s_s is a shell command preceded by the ccoopprroocc reserved word.  A coprocess is executed asynchronously in a subshell, as  if  the  command  had
       been terminated with the && control operator, with a two-way pipe established between the executing shell and the coprocess.

       The format for a coprocess is:

              ccoopprroocc [_N_A_M_E] _c_o_m_m_a_n_d [_r_e_d_i_r_e_c_t_i_o_n_s]

       This  creates a coprocess named _N_A_M_E.  If _N_A_M_E is not supplied, the default name is CCOOPPRROOCC.  _N_A_M_E must not be supplied if _c_o_m_m_a_n_d is a _s_i_m_p_l_e _c_o_m_m_a_n_d
       (see above); otherwise, it is interpreted as the first word of the simple command.  When the coprocess is executed, the shell creates an array  vari‐
       able  (see AArrrraayyss below) named _N_A_M_E in the context of the executing shell.  The standard output of _c_o_m_m_a_n_d is connected via a pipe to a file descrip‐
       tor in the executing shell, and that file descriptor is assigned to _N_A_M_E[0].  The standard input of _c_o_m_m_a_n_d is connected via a pipe  to  a  file  de‐
       scriptor  in the executing shell, and that file descriptor is assigned to _N_A_M_E[1].  This pipe is established before any redirections specified by the
       command (see RREEDDIIRREECCTTIIOONN below).  The file descriptors can be utilized as arguments to shell commands and redirections  using  standard  word  expan‐
       sions.   Other  than those created to execute command and process substitutions, the file descriptors are not available in subshells.  The process ID
       of the shell spawned to execute the coprocess is available as the value of the variable _N_A_M_E_PID.  The wwaaiitt builtin command may be used to  wait  for
       the coprocess to terminate.

       Since  the  coprocess is created as an asynchronous command, the ccoopprroocc command always returns success.  The return status of a coprocess is the exit
       status of _c_o_m_m_a_n_d.

   SShheellll FFuunnccttiioonn DDeeffiinniittiioonnss
       A shell function is an object that is called like a simple command and executes a compound command with a new set of  positional  parameters.   Shell
       functions are declared as follows:

       _f_n_a_m_e () _c_o_m_p_o_u_n_d_-_c_o_m_m_a_n_d [_r_e_d_i_r_e_c_t_i_o_n]
       ffuunnccttiioonn _f_n_a_m_e [()] _c_o_m_p_o_u_n_d_-_c_o_m_m_a_n_d [_r_e_d_i_r_e_c_t_i_o_n]
              This  defines a function named _f_n_a_m_e.  The reserved word ffuunnccttiioonn is optional.  If the ffuunnccttiioonn reserved word is supplied, the parentheses are
              optional.  The _b_o_d_y of the function is the compound command _c_o_m_p_o_u_n_d_-_c_o_m_m_a_n_d (see CCoommppoouunndd CCoommmmaannddss above).  That command is usually a _l_i_s_t of
              commands  between  {  and }, but may be any command listed under CCoommppoouunndd CCoommmmaannddss above, with one exception: If the ffuunnccttiioonn reserved word is
              used, but the parentheses are not supplied, the braces are required.  _c_o_m_p_o_u_n_d_-_c_o_m_m_a_n_d is executed whenever _f_n_a_m_e is specified as the name  of
              a  simple command.  When in _p_o_s_i_x _m_o_d_e, _f_n_a_m_e must be a valid shell _n_a_m_e and may not be the name of one of the POSIX _s_p_e_c_i_a_l _b_u_i_l_t_i_n_s.  In de‐
              fault mode, a function name can be any unquoted shell word that does not contain $$.  Any redirections (see RREEDDIIRREECCTTIIOONN below) specified when a
              function  is  defined are performed when the function is executed.  The exit status of a function definition is zero unless a syntax error oc‐
              curs or a readonly function with the same name already exists.  When executed, the exit status of a function is the exit status  of  the  last
              command executed in the body.  (See FFUUNNCCTTIIOONNSS below.)

CCOOMMMMEENNTTSS
       In  a non-interactive shell, or an interactive shell in which the iinntteerraaccttiivvee__ccoommmmeennttss option to the sshhoopptt builtin is enabled (see SSHHEELLLL BBUUIILLTTIINN CCOOMM‐‐
       MMAANNDDSS below), a word beginning with ## causes that word and all remaining characters on that line to be ignored.  An interactive shell without the iinn‐‐
       tteerraaccttiivvee__ccoommmmeennttss option enabled does not allow comments.  The iinntteerraaccttiivvee__ccoommmmeennttss option is on by default in interactive shells.

QQUUOOTTIINNGG
       _Q_u_o_t_i_n_g is used to remove the special meaning of certain characters or words to the shell.  Quoting can be used to disable special treatment for spe‐
       cial characters, to prevent reserved words from being recognized as such, and to prevent parameter expansion.

       Each of the _m_e_t_a_c_h_a_r_a_c_t_e_r_s listed above under DDEEFFIINNIITTIIOONNSS has special meaning to the shell and must be quoted if it is to represent itself.

       When the command history expansion facilities are being used (see HHIISSTTOORRYY EEXXPPAANNSSIIOONN below), the _h_i_s_t_o_r_y  _e_x_p_a_n_s_i_o_n  character,  usually  !!,  must  be
       quoted to prevent history expansion.

       There are three quoting mechanisms: the _e_s_c_a_p_e _c_h_a_r_a_c_t_e_r, single quotes, and double quotes.

       A  non-quoted  backslash (\\) is the _e_s_c_a_p_e _c_h_a_r_a_c_t_e_r.  It preserves the literal value of the next character that follows, with the exception of <new‐
       line>.  If a \\<newline> pair appears, and the backslash is not itself quoted, the \\<newline> is treated as a line continuation (that is,  it  is  re‐
       moved from the input stream and effectively ignored).

       Enclosing  characters  in single quotes preserves the literal value of each character within the quotes.  A single quote may not occur between single
       quotes, even when preceded by a backslash.

       Enclosing characters in double quotes preserves the literal value of all characters within the quotes, with the exception of $$, ``, \\, and, when  his‐
       tory expansion is enabled, !!.  When the shell is in _p_o_s_i_x _m_o_d_e, the !! has no special meaning within double quotes, even when history expansion is en‐
       abled.  The characters $$ and `` retain their special meaning within double quotes.  The backslash retains its special meaning only  when  followed  by
       one  of  the following characters: $$, ``, "", \\, or <<nneewwlliinnee>>.  A double quote may be quoted within double quotes by preceding it with a backslash.  If
       enabled, history expansion will be performed unless an !!  appearing in double quotes is escaped using a backslash.  The backslash preceding the !!  is
       not removed.

       The special parameters ** and @@ have special meaning when in double quotes (see PPAARRAAMMEETTEERRSS below).

       Words of the form $$'_s_t_r_i_n_g' are treated specially.  The word expands to _s_t_r_i_n_g, with backslash-escaped characters replaced as specified by the ANSI C
       standard.  Backslash escape sequences, if present, are decoded as follows:
              \\aa     alert (bell)
              \\bb     backspace
              \\ee
              \\EE     an escape character
              \\ff     form feed
              \\nn     new line
              \\rr     carriage return
              \\tt     horizontal tab
              \\vv     vertical tab
              \\\\     backslash
              \\''     single quote
              \\""     double quote
              \\??     question mark
              \\_n_n_n   the eight-bit character whose value is the octal value _n_n_n (one to three octal digits)
              \\xx_H_H   the eight-bit character whose value is the hexadecimal value _H_H (one or two hex digits)
              \\uu_H_H_H_H the Unicode (ISO/IEC 10646) character whose value is the hexadecimal value _H_H_H_H (one to four hex digits)
              \\UU_H_H_H_H_H_H_H_H
                     the Unicode (ISO/IEC 10646) character whose value is the hexadecimal value _H_H_H_H_H_H_H_H (one to eight hex digits)
              \\cc_x    a control-_x character

       The expanded result is single-quoted, as if the dollar sign had not been present.

       A double-quoted string preceded by a dollar sign ($$"_s_t_r_i_n_g") will cause the string to be translated according to the current locale.  The _g_e_t_t_e_x_t in‐
       frastructure  performs  the message catalog lookup and translation, using the LLCC__MMEESSSSAAGGEESS and TTEEXXTTDDOOMMAAIINN shell variables.  If the current locale is CC
       or PPOOSSIIXX, or if there are no translations available, the dollar sign is ignored.  If the string is translated and replaced, the replacement  is  dou‐
       ble-quoted.

PPAARRAAMMEETTEERRSS
       A  _p_a_r_a_m_e_t_e_r is an entity that stores values.  It can be a _n_a_m_e, a number, or one of the special characters listed below under SSppeecciiaall PPaarraammeetteerrss.  A
       _v_a_r_i_a_b_l_e is a parameter denoted by a _n_a_m_e.  A variable has a _v_a_l_u_e and zero or more _a_t_t_r_i_b_u_t_e_s.  Attributes are assigned using  the  ddeeccllaarree  builtin
       command (see ddeeccllaarree below in SSHHEELLLL BBUUIILLTTIINN CCOOMMMMAANNDDSS).

       A parameter is set if it has been assigned a value.  The null string is a valid value.  Once a variable is set, it may be unset only by using the uunn‐‐
       sseett builtin command (see SSHHEELLLL BBUUIILLTTIINN CCOOMMMMAANNDDSS below).

       A _v_a_r_i_a_b_l_e may be assigned to by a statement of the form

              _n_a_m_e=[_v_a_l_u_e]

       If _v_a_l_u_e is not given, the variable is assigned the null string.  All _v_a_l_u_e_s undergo tilde expansion, parameter and variable expansion, command  sub‐
       stitution,  arithmetic expansion, and quote removal (see EEXXPPAANNSSIIOONN below).  If the variable has its iinntteeggeerr attribute set, then _v_a_l_u_e is evaluated as
       an arithmetic expression even if the $((...)) expansion is not used (see AArriitthhmmeettiicc EExxppaannssiioonn below).  Word splitting is not performed, with the  ex‐
       ception  of  ""$$@@""  as explained below under SSppeecciiaall PPaarraammeetteerrss.  Pathname expansion is not performed.  Assignment statements may also appear as argu‐
       ments to the aalliiaass, ddeeccllaarree, ttyyppeesseett, eexxppoorrtt, rreeaaddoonnllyy, and llooccaall builtin commands (_d_e_c_l_a_r_a_t_i_o_n commands).  When in _p_o_s_i_x _m_o_d_e,  these  builtins  may
       appear in a command after one or more instances of the ccoommmmaanndd builtin and retain these assignment statement properties.

       In the context where an assignment statement is assigning a value to a shell variable or array index, the += operator can be used to append to or add
       to the variable's previous value.  This includes arguments to builtin commands such as ddeeccllaarree that accept assignment  statements  (_d_e_c_l_a_r_a_t_i_o_n  com‐
       mands).   When  += is applied to a variable for which the _i_n_t_e_g_e_r attribute has been set, _v_a_l_u_e is evaluated as an arithmetic expression and added to
       the variable's current value, which is also evaluated.  When += is applied to an array variable using compound assignment  (see  AArrrraayyss  below),  the
       variable's value is not unset (as it is when using =), and new values are appended to the array beginning at one greater than the array's maximum in‐
       dex (for indexed arrays) or added as additional key-value pairs in an associative array.  When applied to a string-valued variable, _v_a_l_u_e is expanded
       and appended to the variable's value.

       A  variable  can  be assigned the _n_a_m_e_r_e_f attribute using the --nn option to the ddeeccllaarree or llooccaall builtin commands (see the descriptions of ddeeccllaarree and
       llooccaall below) to create a _n_a_m_e_r_e_f, or a reference to another variable.  This allows variables to be  manipulated  indirectly.   Whenever  the  nameref
       variable is referenced, assigned to, unset, or has its attributes modified (other than using or changing the _n_a_m_e_r_e_f attribute itself), the operation
       is actually performed on the variable specified by the nameref variable's value.  A nameref is commonly used within shell functions  to  refer  to  a
       variable  whose name is passed as an argument to the function.  For instance, if a variable name is passed to a shell function as its first argument,
       running
              declare -n ref=$1
       inside the function creates a nameref variable rreeff whose value is the variable name passed as the first argument.  References and assignments to rreeff,
       and  changes  to its attributes, are treated as references, assignments, and attribute modifications to the variable whose name was passed as $$11.  If
       the control variable in a ffoorr loop has the nameref attribute, the list of words can be a list of shell variables, and a name reference will be estab‐
       lished for each word in the list, in turn, when the loop is executed.  Array variables cannot be given the nnaammeerreeff attribute.  However, nameref vari‐
       ables can reference array variables and subscripted array variables.  Namerefs can be unset using the --nn option to the uunnsseett builtin.  Otherwise,  if
       uunnsseett is executed with the name of a nameref variable as an argument, the variable referenced by the nameref variable will be unset.

   PPoossiittiioonnaall PPaarraammeetteerrss
       A  _p_o_s_i_t_i_o_n_a_l  _p_a_r_a_m_e_t_e_r  is  a  parameter denoted by one or more digits, other than the single digit 0.  Positional parameters are assigned from the
       shell's arguments when it is invoked, and may be reassigned using the sseett builtin command.  Positional parameters may not be assigned to with assign‐
       ment statements.  The positional parameters are temporarily replaced when a shell function is executed (see FFUUNNCCTTIIOONNSS below).

       When a positional parameter consisting of more than a single digit is expanded, it must be enclosed in braces (see EEXXPPAANNSSIIOONN below).

   SSppeecciiaall PPaarraammeetteerrss
       The shell treats several parameters specially.  These parameters may only be referenced; assignment to them is not allowed.
       **      Expands to the positional parameters, starting from one.  When the expansion is not within double quotes, each positional parameter expands to
              a separate word.  In contexts where it is performed, those words are subject to further word splitting and pathname expansion.  When  the  ex‐
              pansion  occurs within double quotes, it expands to a single word with the value of each parameter separated by the first character of the IIFFSS
              special variable.  That is, "$$**" is equivalent to "$$11_c$$22_c......", where _c is the first character of the value of the IIFFSS variable.  If IIFFSS is un‐
              set, the parameters are separated by spaces.  If IIFFSS is null, the parameters are joined without intervening separators.
       @@      Expands  to the positional parameters, starting from one.  In contexts where word splitting is performed, this expands each positional parame‐
              ter to a separate word; if not within double quotes, these words are subject to word splitting.  In contexts where word splitting is not  per‐
              formed,  this  expands  to a single word with each positional parameter separated by a space.  When the expansion occurs within double quotes,
              each parameter expands to a separate word.  That is, "$$@@" is equivalent to "$$11" "$$22" ...  If the double-quoted expansion occurs within a word,
              the expansion of the first parameter is joined with the beginning part of the original word, and the expansion of the last parameter is joined
              with the last part of the original word.  When there are no positional parameters, "$$@@" and $$@@ expand to nothing (i.e., they are removed).
       ##      Expands to the number of positional parameters in decimal.
       ??      Expands to the exit status of the most recently executed foreground pipeline.
       --      Expands to the current option flags as specified upon invocation, by the sseett builtin command, or those set by the shell itself (such as the --ii
              option).
       $$      Expands to the process ID of the shell.  In a () subshell, it expands to the process ID of the current shell, not the subshell.
       !!      Expands  to  the  process  ID of the job most recently placed into the background, whether executed as an asynchronous command or using the bbgg
              builtin (see JJOOBB CCOONNTTRROOLL below).
       00      Expands to the name of the shell or shell script.  This is set at shell initialization.  If bbaasshh is invoked with a file of commands, $$00 is set
              to the name of that file.  If bbaasshh is started with the --cc option, then $$00 is set to the first argument after the string to be executed, if one
              is present.  Otherwise, it is set to the filename used to invoke bbaasshh, as given by argument zero.

   SShheellll VVaarriiaabblleess
       The following variables are set by the shell:

       __      At shell startup, set to the pathname used to invoke the shell or shell script being executed as passed in the environment or  argument  list.
              Subsequently,  expands  to the last argument to the previous simple command executed in the foreground, after expansion.  Also set to the full
              pathname used to invoke each command executed and placed in the environment exported to that command.   When  checking  mail,  this  parameter
              holds the name of the mail file currently being checked.
       BBAASSHH   Expands to the full filename used to invoke this instance of bbaasshh.
       BBAASSHHOOPPTTSS
              A  colon-separated  list  of  enabled shell options.  Each word in the list is a valid argument for the --ss option to the sshhoopptt builtin command
              (see SSHHEELLLL BBUUIILLTTIINN CCOOMMMMAANNDDSS below).  The options appearing in BBAASSHHOOPPTTSS are those reported as _o_n by sshhoopptt.  If this variable is in the environ‐
              ment when bbaasshh starts up, each shell option in the list will be enabled before reading any startup files.  This variable is read-only.
       BBAASSHHPPIIDD
              Expands  to  the  process ID of the current bbaasshh process.  This differs from $$$$ under certain circumstances, such as subshells that do not re‐
              quire bbaasshh to be re-initialized.  Assignments to BBAASSHHPPIIDD have no effect.  If BBAASSHHPPIIDD is unset, it loses its special properties, even if it  is
              subsequently reset.
       BBAASSHH__AALLIIAASSEESS
              An  associative array variable whose members correspond to the internal list of aliases as maintained by the aalliiaass builtin.  Elements added to
              this array appear in the alias list; however, unsetting array elements currently does not cause aliases to be removed from the alias list.  If
              BBAASSHH__AALLIIAASSEESS is unset, it loses its special properties, even if it is subsequently reset.
       BBAASSHH__AARRGGCC
              An  array variable whose values are the number of parameters in each frame of the current bbaasshh execution call stack.  The number of parameters
              to the current subroutine (shell function or script executed with .. or ssoouurrccee) is at the top of the stack.  When a subroutine is executed, the
              number  of  parameters passed is pushed onto BBAASSHH__AARRGGCC.  The shell sets BBAASSHH__AARRGGCC only when in extended debugging mode (see the description of
              the eexxttddeebbuugg option to the sshhoopptt builtin below).  Setting eexxttddeebbuugg after the shell has started to execute a script, or referencing this  vari‐
              able when eexxttddeebbuugg is not set, may result in inconsistent values.
       BBAASSHH__AARRGGVV
              An  array variable containing all of the parameters in the current bbaasshh execution call stack.  The final parameter of the last subroutine call
              is at the top of the stack; the first parameter of the initial call is at the bottom.  When a subroutine is executed, the parameters  supplied
              are  pushed  onto BBAASSHH__AARRGGVV.  The shell sets BBAASSHH__AARRGGVV only when in extended debugging mode (see the description of the eexxttddeebbuugg option to the
              sshhoopptt builtin below).  Setting eexxttddeebbuugg after the shell has started to execute a script, or referencing this variable  when  eexxttddeebbuugg  is  not
              set, may result in inconsistent values.
       BBAASSHH__AARRGGVV00
              When  referenced,  this variable expands to the name of the shell or shell script (identical to $$00; see the description of special parameter 0
              above).  Assignment to BBAASSHH__AARRGGVV00 causes the value assigned to also be assigned to $$00.  If BBAASSHH__AARRGGVV00 is unset, it loses its  special  proper‐
              ties, even if it is subsequently reset.
       BBAASSHH__CCMMDDSS
              An  associative  array  variable  whose members correspond to the internal hash table of commands as maintained by the hhaasshh builtin.  Elements
              added to this array appear in the hash table; however, unsetting array elements currently does not cause command names to be removed from  the
              hash table.  If BBAASSHH__CCMMDDSS is unset, it loses its special properties, even if it is subsequently reset.
       BBAASSHH__CCOOMMMMAANNDD
              The  command  currently being executed or about to be executed, unless the shell is executing a command as the result of a trap, in which case
              it is the command executing at the time of the trap.  If BBAASSHH__CCOOMMMMAANNDD is unset, it loses its special properties, even if  it  is  subsequently
              reset.
       BBAASSHH__EEXXEECCUUTTIIOONN__SSTTRRIINNGG
              The command argument to the --cc invocation option.
       BBAASSHH__LLIINNEENNOO
              An  array  variable  whose  members  are  the  line  numbers  in  source  files  where  each  corresponding  member  of  FFUUNNCCNNAAMMEE was invoked.
              $${{BBAASSHH__LLIINNEENNOO[[_$_i]]}} is the line number in the source file ($${{BBAASSHH__SSOOUURRCCEE[[_$_i_+_1]]}}) where $${{FFUUNNCCNNAAMMEE[[_$_i]]}} was called (or  $${{BBAASSHH__LLIINNEENNOO[[_$_i_-_1]]}}  if
              referenced within another shell function).  Use LLIINNEENNOO to obtain the current line number.
       BBAASSHH__LLOOAADDAABBLLEESS__PPAATTHH
              A colon-separated list of directories in which the shell looks for dynamically loadable builtins specified by the eennaabbllee command.
       BBAASSHH__RREEMMAATTCCHH
              An array variable whose members are assigned by the ==~~ binary operator to the [[[[ conditional command.  The element with index 0 is the portion
              of the string matching the entire regular expression.  The element with index _n is the portion of the string matching  the  _nth  parenthesized
              subexpression.
       BBAASSHH__SSOOUURRCCEE
              An  array  variable whose members are the source filenames where the corresponding shell function names in the FFUUNNCCNNAAMMEE array variable are de‐
              fined.  The shell function $${{FFUUNNCCNNAAMMEE[[_$_i]]}} is defined in the file $${{BBAASSHH__SSOOUURRCCEE[[_$_i]]}} and called from $${{BBAASSHH__SSOOUURRCCEE[[_$_i_+_1]]}}.
       BBAASSHH__SSUUBBSSHHEELLLL
              Incremented by one within each subshell or subshell environment when the shell begins executing in that environment.  The initial value is  0.
              If BBAASSHH__SSUUBBSSHHEELLLL is unset, it loses its special properties, even if it is subsequently reset.
       BBAASSHH__VVEERRSSIINNFFOO
              A  readonly  array variable whose members hold version information for this instance of bbaasshh.  The values assigned to the array members are as
              follows:
              BBAASSHH__VVEERRSSIINNFFOO[[0]]        The major version number (the _r_e_l_e_a_s_e).
              BBAASSHH__VVEERRSSIINNFFOO[[1]]        The minor version number (the _v_e_r_s_i_o_n).
              BBAASSHH__VVEERRSSIINNFFOO[[2]]        The patch level.
              BBAASSHH__VVEERRSSIINNFFOO[[3]]        The build version.
              BBAASSHH__VVEERRSSIINNFFOO[[4]]        The release status (e.g., _b_e_t_a_1).
              BBAASSHH__VVEERRSSIINNFFOO[[5]]        The value of MMAACCHHTTYYPPEE.
       BBAASSHH__VVEERRSSIIOONN
              Expands to a string describing the version of this instance of bbaasshh.
       CCOOMMPP__CCWWOORRDD
              An index into $${{CCOOMMPP__WWOORRDDSS}} of the word containing the current cursor position.  This variable is available only in shell functions invoked by
              the programmable completion facilities (see PPrrooggrraammmmaabbllee CCoommpplleettiioonn below).
       CCOOMMPP__KKEEYY
              The key (or final key of a key sequence) used to invoke the current completion function.
       CCOOMMPP__LLIINNEE
              The current command line.  This variable is available only in shell functions and external commands invoked by the programmable completion fa‐
              cilities (see PPrrooggrraammmmaabbllee CCoommpplleettiioonn below).
       CCOOMMPP__PPOOIINNTT
              The index of the current cursor position relative to the beginning of the current command.  If the current cursor position is at  the  end  of
              the  current  command,  the value of this variable is equal to $${{##CCOOMMPP__LLIINNEE}}.  This variable is available only in shell functions and external
              commands invoked by the programmable completion facilities (see PPrrooggrraammmmaabbllee CCoommpplleettiioonn below).
       CCOOMMPP__TTYYPPEE
              Set to an integer value corresponding to the type of completion attempted that caused a completion function to be called: _T_A_B, for normal com‐
              pletion,  _?,  for listing completions after successive tabs, _!, for listing alternatives on partial word completion, _@, to list completions if
              the word is not unmodified, or _%, for menu completion.  This variable is available only in shell functions and external  commands  invoked  by
              the programmable completion facilities (see PPrrooggrraammmmaabbllee CCoommpplleettiioonn below).
       CCOOMMPP__WWOORRDDBBRREEAAKKSS
              The  set  of  characters that the rreeaaddlliinnee library treats as word separators when performing word completion.  If CCOOMMPP__WWOORRDDBBRREEAAKKSS is unset, it
              loses its special properties, even if it is subsequently reset.
       CCOOMMPP__WWOORRDDSS
              An array variable (see AArrrraayyss below) consisting of the individual words in the current command line.  The line is split into words as rreeaaddlliinnee
              would split it, using CCOOMMPP__WWOORRDDBBRREEAAKKSS as described above.  This variable is available only in shell functions invoked by the programmable com‐
              pletion facilities (see PPrrooggrraammmmaabbllee CCoommpplleettiioonn below).
       CCOOPPRROOCC An array variable (see AArrrraayyss below) created to hold the file descriptors for output from and input to an unnamed coprocess  (see  CCoopprroocceesssseess
              above).
       DDIIRRSSTTAACCKK
              An  array  variable  (see  AArrrraayyss below) containing the current contents of the directory stack.  Directories appear in the stack in the order
              they are displayed by the ddiirrss builtin.  Assigning to members of this array variable may be used to modify directories already in  the  stack,
              but  the  ppuusshhdd  and ppooppdd builtins must be used to add and remove directories.  Assignment to this variable will not change the current direc‐
              tory.  If DDIIRRSSTTAACCKK is unset, it loses its special properties, even if it is subsequently reset.
       EEPPOOCCHHRREEAALLTTIIMMEE
              Each time this parameter is referenced, it expands to the number of seconds since the Unix Epoch (see _t_i_m_e(3)) as a floating point value  with
              micro-second  granularity.   Assignments to EEPPOOCCHHRREEAALLTTIIMMEE are ignored.  If EEPPOOCCHHRREEAALLTTIIMMEE is unset, it loses its special properties, even if it
              is subsequently reset.
       EEPPOOCCHHSSEECCOONNDDSS
              Each time this parameter is referenced, it expands to the number of seconds since the Unix Epoch (see _t_i_m_e(3)).  Assignments  to  EEPPOOCCHHSSEECCOONNDDSS
              are ignored.  If EEPPOOCCHHSSEECCOONNDDSS is unset, it loses its special properties, even if it is subsequently reset.
       EEUUIIDD   Expands to the effective user ID of the current user, initialized at shell startup.  This variable is readonly.
       FFUUNNCCNNAAMMEE
              An  array variable containing the names of all shell functions currently in the execution call stack.  The element with index 0 is the name of
              any currently-executing shell function.  The bottom-most element (the one with the highest index) is "main".  This variable exists only when a
              shell  function  is  executing.  Assignments to FFUUNNCCNNAAMMEE have no effect.  If FFUUNNCCNNAAMMEE is unset, it loses its special properties, even if it is
              subsequently reset.

              This variable can be used with BBAASSHH__LLIINNEENNOO and  BBAASSHH__SSOOUURRCCEE.   Each  element  of  FFUUNNCCNNAAMMEE  has  corresponding  elements  in  BBAASSHH__LLIINNEENNOO  and
              BBAASSHH__SSOOUURRCCEE  to  describe  the  call  stack.   For  instance,  $${{FFUUNNCCNNAAMMEE[[_$_i]]}}  was  called  from the file $${{BBAASSHH__SSOOUURRCCEE[[_$_i_+_1]]}} at line number
              $${{BBAASSHH__LLIINNEENNOO[[_$_i]]}}.  The ccaalllleerr builtin displays the current call stack using this information.
       GGRROOUUPPSS An array variable containing the list of groups of which the current user is a member.  Assignments to GGRROOUUPPSS have no effect.   If  GGRROOUUPPSS  is
              unset, it loses its special properties, even if it is subsequently reset.
       HHIISSTTCCMMDD
              The  history number, or index in the history list, of the current command.  Assignments to HHIISSTTCCMMDD are ignored.  If HHIISSTTCCMMDD is unset, it loses
              its special properties, even if it is subsequently reset.
       HHOOSSTTNNAAMMEE
              Automatically set to the name of the current host.
       HHOOSSTTTTYYPPEE
              Automatically set to a string that uniquely describes the type of machine on which bbaasshh is executing.  The default is system-dependent.
       LLIINNEENNOO Each time this parameter is referenced, the shell substitutes a decimal number representing the current sequential line number (starting  with
              1) within a script or function.  When not in a script or function, the value substituted is not guaranteed to be meaningful.  If LLIINNEENNOO is un‐
              set, it loses its special properties, even if it is subsequently reset.
       MMAACCHHTTYYPPEE
              Automatically set to a string that fully describes the system type on which bbaasshh is executing, in the standard GNU _c_p_u_-_c_o_m_p_a_n_y_-_s_y_s_t_e_m  format.
              The default is system-dependent.
       MMAAPPFFIILLEE
              An array variable (see AArrrraayyss below) created to hold the text read by the mmaappffiillee builtin when no variable name is supplied.
       OOLLDDPPWWDD The previous working directory as set by the ccdd command.
       OOPPTTAARRGG The value of the last option argument processed by the ggeettooppttss builtin command (see SSHHEELLLL BBUUIILLTTIINN CCOOMMMMAANNDDSS below).
       OOPPTTIINNDD The index of the next argument to be processed by the ggeettooppttss builtin command (see SSHHEELLLL BBUUIILLTTIINN CCOOMMMMAANNDDSS below).
       OOSSTTYYPPEE Automatically set to a string that describes the operating system on which bbaasshh is executing.  The default is system-dependent.
       PPIIPPEESSTTAATTUUSS
              An array variable (see AArrrraayyss below) containing a list of exit status values from the processes in the most-recently-executed foreground pipe‐
              line (which may contain only a single command).
       PPPPIIDD   The process ID of the shell's parent.  This variable is readonly.
       PPWWDD    The current working directory as set by the ccdd command.
       RRAANNDDOOMM Each time this parameter is referenced, it expands to a random integer between 0 and 32767.  Assigning a value to RRAANNDDOOMM  initializes  (seeds)
              the sequence of random numbers.  If RRAANNDDOOMM is unset, it loses its special properties, even if it is subsequently reset.
       RREEAADDLLIINNEE__LLIINNEE
              The contents of the rreeaaddlliinnee line buffer, for use with "bind -x" (see SSHHEELLLL BBUUIILLTTIINN CCOOMMMMAANNDDSS below).
       RREEAADDLLIINNEE__MMAARRKK
              The  position of the mark (saved insertion point) in the rreeaaddlliinnee line buffer, for use with "bind -x" (see SSHHEELLLL BBUUIILLTTIINN CCOOMMMMAANNDDSS below).  The
              characters between the insertion point and the mark are often called the _r_e_g_i_o_n.
       RREEAADDLLIINNEE__PPOOIINNTT
              The position of the insertion point in the rreeaaddlliinnee line buffer, for use with "bind -x" (see SSHHEELLLL BBUUIILLTTIINN CCOOMMMMAANNDDSS below).
       RREEPPLLYY  Set to the line of input read by the rreeaadd builtin command when no arguments are supplied.
       SSEECCOONNDDSS
              Each time this parameter is referenced, the number of seconds since shell invocation is returned.  If a value  is  assigned  to  SSEECCOONNDDSS,  the
              value  returned  upon  subsequent  references is the number of seconds since the assignment plus the value assigned.  The number of seconds at
              shell invocation and the current time is always determined by querying the system clock.  If SSEECCOONNDDSS is unset, it loses  its  special  proper‐
              ties, even if it is subsequently reset.
       SSHHEELLLLOOPPTTSS
              A  colon-separated list of enabled shell options.  Each word in the list is a valid argument for the --oo option to the sseett builtin command (see
              SSHHEELLLL BBUUIILLTTIINN CCOOMMMMAANNDDSS below).  The options appearing in SSHHEELLLLOOPPTTSS are those reported as _o_n by sseett --oo.  If this variable is in the environment
              when bbaasshh starts up, each shell option in the list will be enabled before reading any startup files.  This variable is read-only.
       SSHHLLVVLL  Incremented by one each time an instance of bbaasshh is started.
       SSRRAANNDDOOMM
              This  variable  expands to a 32-bit pseudo-random number each time it is referenced. The random number generator is not linear on systems that
              support /dev/urandom or _a_r_c_4_r_a_n_d_o_m, so each returned number has no relationship to the numbers preceding it.  The random number generator can‐
              not  be  seeded,  so  assignments to this variable have no effect.  If SSRRAANNDDOOMM is unset, it loses its special properties, even if it is subse‐
              quently reset.
       UUIIDD    Expands to the user ID of the current user, initialized at shell startup.  This variable is readonly.

       The following variables are used by the shell.  In some cases, bbaasshh assigns a default value to a variable; these cases are noted below.

       BBAASSHH__CCOOMMPPAATT
              The value is used to set the shell's compatibility level.  See SSHHEELLLL CCOOMMPPAATTIIBBIILLIITTYY MMOODDEE below for a description of the  various  compatibility
              levels  and  their effects.  The value may be a decimal number (e.g., 4.2) or an integer (e.g., 42) corresponding to the desired compatibility
              level.  If BBAASSHH__CCOOMMPPAATT is unset or set to the empty string, the compatibility level is set  to  the  default  for  the  current  version.   If
              BBAASSHH__CCOOMMPPAATT  is set to a value that is not one of the valid compatibility levels, the shell prints an error message and sets the compatibility
              level to the default for the current version.  The valid values correspond to the compatibility levels described below under BBSSHHEELLLLCOMPATIBIL‐
              ITYMMOODDEE.   For  example,  4.2 and 42 are valid values that correspond to the ccoommppaatt4422 sshhoopptt option and set the compatibility level to 42.  The
              current version is also a valid value.
       BBAASSHH__EENNVV
              If this parameter is set when bbaasshh is executing a shell script, its value is interpreted as a filename containing commands to  initialize  the
              shell,  as in _~_/_._b_a_s_h_r_c.  The value of BBAASSHH__EENNVV is subjected to parameter expansion, command substitution, and arithmetic expansion before be‐
              ing interpreted as a filename.  PPAATTHH is not used to search for the resultant filename.
       BBAASSHH__XXTTRRAACCEEFFDD
              If set to an integer corresponding to a valid file descriptor, bbaasshh will write the trace output generated when _s_e_t _-_x is enabled to that  file
              descriptor.   The  file descriptor is closed when BBAASSHH__XXTTRRAACCEEFFDD is unset or assigned a new value.  Unsetting BBAASSHH__XXTTRRAACCEEFFDD or assigning it the
              empty string causes the trace output to be sent to the standard error.  Note that setting BBAASSHH__XXTTRRAACCEEFFDD to 2 (the standard error file descrip‐
              tor) and then unsetting it will result in the standard error being closed.
       CCDDPPAATTHH The search path for the ccdd command.  This is a colon-separated list of directories in which the shell looks for destination directories speci‐
              fied by the ccdd command.  A sample value is ".:~:/usr".
       CCHHIILLDD__MMAAXX
              Set the number of exited child status values for the shell to remember.  Bash will not allow this value to be decreased below a POSIX-mandated
              minimum, and there is a maximum value (currently 8192) that this may not exceed.  The minimum value is system-dependent.
       CCOOLLUUMMNNSS
              Used  by the sseelleecctt compound command to determine the terminal width when printing selection lists.  Automatically set if the cchheecckkwwiinnssiizzee op‐
              tion is enabled or in an interactive shell upon receipt of a SSIIGGWWIINNCCHH.
       CCOOMMPPRREEPPLLYY
              An array variable from which bbaasshh reads the possible completions generated by a shell function invoked by the programmable completion facility
              (see PPrrooggrraammmmaabbllee CCoommpplleettiioonn below).  Each array element contains one possible completion.
       EEMMAACCSS  If  bbaasshh  finds  this variable in the environment when the shell starts with value "t", it assumes that the shell is running in an Emacs shell
              buffer and disables line editing.
       EENNVV    Expanded and executed similarly to BBAASSHH__EENNVV (see IINNVVOOCCAATTIIOONN above) when an interactive shell is invoked in _p_o_s_i_x _m_o_d_e.
       EEXXEECCIIGGNNOORREE
              A colon-separated list of shell patterns (see PPaatttteerrnn MMaattcchhiinngg) defining the list of filenames to be ignored by  command  search  using  PPAATTHH.
              Files  whose  full pathnames match one of these patterns are not considered executable files for the purposes of completion and command execu‐
              tion via PPAATTHH lookup.  This does not affect the behavior of the [[, tteesstt, and [[[[ commands.  Full pathnames in the command hash  table  are  not
              subject  to EEXXEECCIIGGNNOORREE.  Use this variable to ignore shared library files that have the executable bit set, but are not executable files.  The
              pattern matching honors the setting of the eexxttgglloobb shell option.
       FFCCEEDDIITT The default editor for the ffcc builtin command.
       FFIIGGNNOORREE
              A colon-separated list of suffixes to ignore when performing filename completion (see RREEAADDLLIINNEE below).  A filename whose suffix matches one of
              the entries in FFIIGGNNOORREE is excluded from the list of matched filenames.  A sample value is ".o:~".
       FFUUNNCCNNEESSTT
              If  set to a numeric value greater than 0, defines a maximum function nesting level.  Function invocations that exceed this nesting level will
              cause the current command to abort.
       GGLLOOBBIIGGNNOORREE
              A colon-separated list of patterns defining the set of file names to be ignored by pathname expansion.  If a file name matched by  a  pathname
              expansion pattern also matches one of the patterns in GGLLOOBBIIGGNNOORREE, it is removed from the list of matches.
       HHIISSTTCCOONNTTRROOLL
              A  colon-separated  list  of values controlling how commands are saved on the history list.  If the list of values includes _i_g_n_o_r_e_s_p_a_c_e, lines
              which begin with a ssppaaccee character are not saved in the history list.  A value of _i_g_n_o_r_e_d_u_p_s causes lines matching the previous history  entry
              to  not be saved.  A value of _i_g_n_o_r_e_b_o_t_h is shorthand for _i_g_n_o_r_e_s_p_a_c_e and _i_g_n_o_r_e_d_u_p_s.  A value of _e_r_a_s_e_d_u_p_s causes all previous lines matching
              the current line to be removed from the history list before that line is saved.  Any value not in the above list is ignored.   If  HHIISSTTCCOONNTTRROOLL
              is unset, or does not include a valid value, all lines read by the shell parser are saved on the history list, subject to the value of HHIISSTTIIGG‐‐
              NNOORREE.  The second and subsequent lines of a multi-line compound command are not tested, and are added to the history regardless of  the  value
              of HHIISSTTCCOONNTTRROOLL.
       HHIISSTTFFIILLEE
              The name of the file in which command history is saved (see HHIISSTTOORRYY below).  The default value is _~_/_._b_a_s_h___h_i_s_t_o_r_y.  If unset, the command his‐
              tory is not saved when a shell exits.
       HHIISSTTFFIILLEESSIIZZEE
              The maximum number of lines contained in the history file.  When this variable is assigned a value, the history file is truncated,  if  neces‐
              sary,  to  contain  no  more  than that number of lines by removing the oldest entries.  The history file is also truncated to this size after
              writing it when a shell exits.  If the value is 0, the history file is truncated to zero size.  Non-numeric values  and  numeric  values  less
              than zero inhibit truncation.  The shell sets the default value to the value of HHIISSTTSSIIZZEE after reading any startup files.
       HHIISSTTIIGGNNOORREE
              A  colon-separated  list  of patterns used to decide which command lines should be saved on the history list.  Each pattern is anchored at the
              beginning of the line and must match the complete line (no implicit `**' is appended).  Each pattern is  tested  against  the  line  after  the
              checks  specified  by  HHIISSTTCCOONNTTRROOLL are applied.  In addition to the normal shell pattern matching characters, `&&' matches the previous history
              line.  `&&' may be escaped using a backslash; the backslash is removed before attempting a match.  The second and subsequent lines of a  multi-
              line  compound  command  are  not tested, and are added to the history regardless of the value of HHIISSTTIIGGNNOORREE.  The pattern matching honors the
              setting of the eexxttgglloobb shell option.
       HHIISSTTSSIIZZEE
              The number of commands to remember in the command history (see HHIISSTTOORRYY below).  If the value is 0, commands are not saved in the history list.
              Numeric  values  less than zero result in every command being saved on the history list (there is no limit).  The shell sets the default value
              to 500 after reading any startup files.
       HHIISSTTTTIIMMEEFFOORRMMAATT
              If this variable is set and not null, its value is used as a format string for _s_t_r_f_t_i_m_e(3) to print the time stamp associated with  each  his‐
              tory  entry  displayed  by the hhiissttoorryy builtin.  If this variable is set, time stamps are written to the history file so they may be preserved
              across shell sessions.  This uses the history comment character to distinguish timestamps from other history lines.
       HHOOMMEE   The home directory of the current user; the default argument for the ccdd builtin command.  The value of this variable is also  used  when  per‐
              forming tilde expansion.
       HHOOSSTTFFIILLEE
              Contains  the  name  of  a file in the same format as _/_e_t_c_/_h_o_s_t_s that should be read when the shell needs to complete a hostname.  The list of
              possible hostname completions may be changed while the shell is running; the next time hostname completion is attempted  after  the  value  is
              changed, bbaasshh adds the contents of the new file to the existing list.  If HHOOSSTTFFIILLEE is set, but has no value, or does not name a readable file,
              bbaasshh attempts to read _/_e_t_c_/_h_o_s_t_s to obtain the list of possible hostname completions.  When HHOOSSTTFFIILLEE is unset, the hostname list is cleared.
       IIFFSS    The _I_n_t_e_r_n_a_l _F_i_e_l_d _S_e_p_a_r_a_t_o_r that is used for word splitting after expansion and to split lines into words with the rreeaadd builtin command.  The
              default value is ``<space><tab><newline>''.
       IIGGNNOORREEEEOOFF
              Controls  the action of an interactive shell on receipt of an EEOOFF character as the sole input.  If set, the value is the number of consecutive
              EEOOFF characters which must be typed as the first characters on an input line before bbaasshh exits.  If the variable exists but does not have a nu‐
              meric value, or has no value, the default value is 10.  If it does not exist, EEOOFF signifies the end of input to the shell.
       IINNPPUUTTRRCC
              The filename for the rreeaaddlliinnee startup file, overriding the default of _~_/_._i_n_p_u_t_r_c (see RREEAADDLLIINNEE below).
       IINNSSIIDDEE__EEMMAACCSS
              If  this  variable appears in the environment when the shell starts, bbaasshh assumes that it is running inside an Emacs shell buffer and may dis‐
              able line editing, depending on the value of TTEERRMM.
       LLAANNGG   Used to determine the locale category for any category not specifically selected with a variable starting with LLCC__.
       LLCC__AALLLL This variable overrides the value of LLAANNGG and any other LLCC__ variable specifying a locale category.
       LLCC__CCOOLLLLAATTEE
              This variable determines the collation order used when sorting the results of pathname expansion, and determines the behavior of range expres‐
              sions, equivalence classes, and collating sequences within pathname expansion and pattern matching.
       LLCC__CCTTYYPPEE
              This  variable  determines the interpretation of characters and the behavior of character classes within pathname expansion and pattern match‐
              ing.
       LLCC__MMEESSSSAAGGEESS
              This variable determines the locale used to translate double-quoted strings preceded by a $$.
       LLCC__NNUUMMEERRIICC
              This variable determines the locale category used for number formatting.
       LLCC__TTIIMMEE
              This variable determines the locale category used for data and time formatting.
       LLIINNEESS  Used by the sseelleecctt compound command to determine the column length for printing selection lists.  Automatically set if the cchheecckkwwiinnssiizzee option
              is enabled or in an interactive shell upon receipt of a SSIIGGWWIINNCCHH.
       MMAAIILL   If this parameter is set to a file or directory name and the MMAAIILLPPAATTHH variable is not set, bbaasshh informs the user of the arrival of mail in the
              specified file or Maildir-format directory.
       MMAAIILLCCHHEECCKK
              Specifies how often (in seconds) bbaasshh checks for mail.  The default is 60 seconds.  When it is time to check for mail, the shell does  so  be‐
              fore  displaying  the  primary  prompt.   If this variable is unset, or set to a value that is not a number greater than or equal to zero, the
              shell disables mail checking.
       MMAAIILLPPAATTHH
              A colon-separated list of filenames to be checked for mail.  The message to be printed when mail arrives in a particular file may be specified
              by separating the filename from the message with a `?'.  When used in the text of the message, $$__ expands to the name of the current mailfile.
              Example:
              MMAAIILLPPAATTHH='/var/mail/bfox?"You have mail":~/shell-mail?"$_ has mail!"'
              BBaasshh can be configured to supply a default value for this variable (there is no value by default), but the location of  the  user  mail  files
              that it uses is system dependent (e.g., /var/mail/$$UUSSEERR).
       OOPPTTEERRRR If  set  to  the value 1, bbaasshh displays error messages generated by the ggeettooppttss builtin command (see SSHHEELLLL BBUUIILLTTIINN CCOOMMMMAANNDDSS below).  OOPPTTEERRRR is
              initialized to 1 each time the shell is invoked or a shell script is executed.
       PPAATTHH   The search path for commands.  It is a colon-separated list of directories in which the shell looks for commands (see  CCOOMMMMAANNDD  EEXXEECCUUTTIIOONN  be‐
              low).   A zero-length (null) directory name in the value of PPAATTHH indicates the current directory.  A null directory name may appear as two ad‐
              jacent colons, or as an initial or trailing colon.  The default path is system-dependent, and is set by the administrator who  installs  bbaasshh.
              A common value is ``/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin''.
       PPOOSSIIXXLLYY__CCOORRRREECCTT
              If this variable is in the environment when bbaasshh starts, the shell enters _p_o_s_i_x _m_o_d_e before reading the startup files, as if the ----ppoossiixx invo‐
              cation option had been supplied.  If it is set while the shell is running, bbaasshh enables _p_o_s_i_x _m_o_d_e, as if the command _s_e_t _-_o  _p_o_s_i_x  had  been
              executed.  When the shell enters _p_o_s_i_x _m_o_d_e, it sets this variable if it was not already set.
       PPRROOMMPPTT__CCOOMMMMAANNDD
              If  this  variable  is  set, and is an array, the value of each set element is executed as a command prior to issuing each primary prompt.  If
              this is set but not an array variable, its value is used as a command to execute instead.
       PPRROOMMPPTT__DDIIRRTTRRIIMM
              If set to a number greater than zero, the value is used as the number of trailing directory components to retain when expanding the \\ww and  \\WW
              prompt string escapes (see PPRROOMMPPTTIINNGG below).  Characters removed are replaced with an ellipsis.
       PPSS00    The  value of this parameter is expanded (see PPRROOMMPPTTIINNGG below) and displayed by interactive shells after reading a command and before the com‐
              mand is executed.
       PPSS11    The value of this parameter is expanded (see PPRROOMMPPTTIINNGG below) and used as the primary prompt string.  The default value is ``\\ss--\\vv\\$$ ''.
       PPSS22    The value of this parameter is expanded as with PPSS11 and used as the secondary prompt string.  The default is ``>> ''.
       PPSS33    The value of this parameter is used as the prompt for the sseelleecctt command (see SSHHEELLLL GGRRAAMMMMAARR above).
       PPSS44    The value of this parameter is expanded as with PPSS11 and the value is printed before each command bbaasshh displays during an execution trace.  The
              first  character of the expanded value of PPSS44 is replicated multiple times, as necessary, to indicate multiple levels of indirection.  The de‐
              fault is ``++ ''.
       SSHHEELLLL  This variable expands to the full pathname to the shell.  If it is not set when the shell starts, bbaasshh assigns to it the full pathname of  the
              current user's login shell.
       TTIIMMEEFFOORRMMAATT
              The  value  of  this  parameter is used as a format string specifying how the timing information for pipelines prefixed with the ttiimmee reserved
              word should be displayed.  The %% character introduces an escape sequence that is expanded to a time value or other  information.   The  escape
              sequences and their meanings are as follows; the braces denote optional portions.
              %%%%        A literal %%.
              %%[[_p]][[ll]]RR  The elapsed time in seconds.
              %%[[_p]][[ll]]UU  The number of CPU seconds spent in user mode.
              %%[[_p]][[ll]]SS  The number of CPU seconds spent in system mode.
              %%PP        The CPU percentage, computed as (%U + %S) / %R.

              The  optional  _p  is  a digit specifying the _p_r_e_c_i_s_i_o_n, the number of fractional digits after a decimal point.  A value of 0 causes no decimal
              point or fraction to be output.  At most three places after the decimal point may be specified; values of _p greater than 3 are changed  to  3.
              If _p is not specified, the value 3 is used.

              The  optional ll specifies a longer format, including minutes, of the form _M_Mm_S_S._F_Fs.  The value of _p determines whether or not the fraction is
              included.

              If this variable is not set, bbaasshh acts as if it had the value $$''\\nnrreeaall\\tt%%33llRR\\nnuusseerr\\tt%%33llUU\\nnssyyss\\tt%%33llSS''.  If the value is null, no timing  infor‐
              mation is displayed.  A trailing newline is added when the format string is displayed.
       TTMMOOUUTT  If  set  to  a  value greater than zero, TTMMOOUUTT is treated as the default timeout for the rreeaadd builtin.  The sseelleecctt command terminates if input
              does not arrive after TTMMOOUUTT seconds when input is coming from a terminal.  In an interactive shell, the value is interpreted as the number  of
              seconds  to wait for a line of input after issuing the primary prompt.  BBaasshh terminates after waiting for that number of seconds if a complete
              line of input does not arrive.
       TTMMPPDDIIRR If set, bbaasshh uses its value as the name of a directory in which bbaasshh creates temporary files for the shell's use.
       aauuttoo__rreessuummee
              This variable controls how the shell interacts with the user and job control.  If this variable is set, single word  simple  commands  without
              redirections  are  treated  as candidates for resumption of an existing stopped job.  There is no ambiguity allowed; if there is more than one
              job beginning with the string typed, the job most recently accessed is selected.  The _n_a_m_e of a stopped job, in this context, is  the  command
              line  used to start it.  If set to the value _e_x_a_c_t, the string supplied must match the name of a stopped job exactly; if set to _s_u_b_s_t_r_i_n_g, the
              string supplied needs to match a substring of the name of a stopped job.  The _s_u_b_s_t_r_i_n_g value provides functionality analogous to the %%??   job
              identifier  (see  JJOOBB  CCOONNTTRROOLL below).  If set to any other value, the supplied string must be a prefix of a stopped job's name; this provides
              functionality analogous to the %%_s_t_r_i_n_g job identifier.
       hhiissttcchhaarrss
              The two or three characters which control history expansion and tokenization (see HHIISSTTOORRYY EEXXPPAANNSSIIOONN below).  The first character is  the  _h_i_s_‐
              _t_o_r_y  _e_x_p_a_n_s_i_o_n character, the character which signals the start of a history expansion, normally `!!'.  The second character is the _q_u_i_c_k _s_u_b_‐
              _s_t_i_t_u_t_i_o_n character, which is used as shorthand for re-running the previous command entered, substituting one string for another in  the  com‐
              mand.   The  default  is  `^^'.  The optional third character is the character which indicates that the remainder of the line is a comment when
              found as the first character of a word, normally `##'.  The history comment character causes history substitution to be skipped for the remain‐
              ing words on the line.  It does not necessarily cause the shell parser to treat the rest of the line as a comment.

   AArrrraayyss
       BBaasshh  provides  one-dimensional  indexed and associative array variables.  Any variable may be used as an indexed array; the ddeeccllaarree builtin will ex‐
       plicitly declare an array.  There is no maximum limit on the size of an array, nor any requirement that members be indexed or assigned  contiguously.
       Indexed arrays are referenced using integers (including arithmetic expressions) and are zero-based; associative arrays are referenced using arbitrary
       strings.  Unless otherwise noted, indexed array indices must be non-negative integers.

       An indexed array is created automatically if any variable is assigned to using the syntax _n_a_m_e[_s_u_b_s_c_r_i_p_t]=_v_a_l_u_e.  The  _s_u_b_s_c_r_i_p_t  is  treated  as  an
       arithmetic  expression  that  must evaluate to a number.  To explicitly declare an indexed array, use ddeeccllaarree --aa _n_a_m_e (see SSHHEELLLL BBUUIILLTTIINN CCOOMMMMAANNDDSS be‐
       low).  ddeeccllaarree --aa _n_a_m_e[[_s_u_b_s_c_r_i_p_t]] is also accepted; the _s_u_b_s_c_r_i_p_t is ignored.

       Associative arrays are created using ddeeccllaarree --AA _n_a_m_e.

       Attributes may be specified for an array variable using the ddeeccllaarree and rreeaaddoonnllyy builtins.  Each attribute applies to all members of an array.

       Arrays are assigned to using compound assignments of the form _n_a_m_e=((value_1 ... value_n)), where each _v_a_l_u_e may be of the form [_s_u_b_s_c_r_i_p_t]=_s_t_r_i_n_g.   In‐
       dexed  array assignments do not require anything but _s_t_r_i_n_g.  Each _v_a_l_u_e in the list is expanded using all the shell expansions described below under
       EEXXPPAANNSSIIOONN.  When assigning to indexed arrays, if the optional brackets and subscript are supplied, that index is assigned to; otherwise the index  of
       the element assigned is the last index assigned to by the statement plus one.  Indexing starts at zero.

       When  assigning to an associative array, the words in a compound assignment may be either assignment statements, for which the subscript is required,
       or a list of words that is interpreted as a sequence of alternating keys and values: _n_a_m_e=(( _k_e_y_1 _v_a_l_u_e_1 _k_e_y_2 _v_a_l_u_e_2 ...)).  These are treated  identi‐
       cally  to _n_a_m_e=(( [_k_e_y_1]=_v_a_l_u_e_1 [_k_e_y_2]=_v_a_l_u_e_2 ...)).  The first word in the list determines how the remaining words are interpreted; all assignments in
       a list must be of the same type.  When using key/value pairs, the keys may not be missing or empty; a final missing value is treated like  the  empty
       string.

       This  syntax is also accepted by the ddeeccllaarree builtin.  Individual array elements may be assigned to using the _n_a_m_e[_s_u_b_s_c_r_i_p_t]=_v_a_l_u_e syntax introduced
       above.  When assigning to an indexed array, if _n_a_m_e is subscripted by a negative number, that number is interpreted as relative to one  greater  than
       the maximum index of _n_a_m_e, so negative indices count back from the end of the array, and an index of -1 references the last element.

       Any  element  of  an  array may be referenced using ${_n_a_m_e[_s_u_b_s_c_r_i_p_t]}.  The braces are required to avoid conflicts with pathname expansion.  If _s_u_b_‐
       _s_c_r_i_p_t is @@ or **, the word expands to all members of _n_a_m_e.  These subscripts differ only when the word appears within double quotes.  If the word  is
       double-quoted,  ${_n_a_m_e[*]} expands to a single word with the value of each array member separated by the first character of the IIFFSS special variable,
       and ${_n_a_m_e[@]} expands each element of _n_a_m_e to a separate word.  When there are no array members, ${_n_a_m_e[@]} expands  to  nothing.   If  the  double-
       quoted expansion occurs within a word, the expansion of the first parameter is joined with the beginning part of the original word, and the expansion
       of the last parameter is joined with the last part of the original word.  This is analogous to the expansion of the special parameters ** and  @@  (see
       SSppeecciiaall  PPaarraammeetteerrss above).  ${#_n_a_m_e[_s_u_b_s_c_r_i_p_t]} expands to the length of ${_n_a_m_e[_s_u_b_s_c_r_i_p_t]}.  If _s_u_b_s_c_r_i_p_t is ** or @@, the expansion is the number of
       elements in the array.  If the _s_u_b_s_c_r_i_p_t used to reference an element of an indexed array evaluates to a number less than zero, it is interpreted  as
       relative  to one greater than the maximum index of the array, so negative indices count back from the end of the array, and an index of -1 references
       the last element.

       Referencing an array variable without a subscript is equivalent to referencing the array with a subscript of 0.  Any reference to a variable using  a
       valid subscript is legal, and bbaasshh will create an array if necessary.

       An array variable is considered set if a subscript has been assigned a value.  The null string is a valid value.

       It  is  possible to obtain the keys (indices) of an array as well as the values.  ${!!_n_a_m_e[_@]} and ${!!_n_a_m_e[_*]} expand to the indices assigned in array
       variable _n_a_m_e.  The treatment when in double quotes is similar to the expansion of the special parameters _@ and _* within double quotes.

       The uunnsseett builtin is used to destroy arrays.  uunnsseett _n_a_m_e[_s_u_b_s_c_r_i_p_t] destroys the array element at index _s_u_b_s_c_r_i_p_t, for both indexed  and  associative
       arrays.   Negative  subscripts  to indexed arrays are interpreted as described above.  Unsetting the last element of an array variable does not unset
       the variable.  uunnsseett _n_a_m_e, where _n_a_m_e is an array, or uunnsseett _n_a_m_e[_s_u_b_s_c_r_i_p_t], where _s_u_b_s_c_r_i_p_t is ** or @@, removes the entire array.

       When using a variable name with a subscript as an argument to a command, such as with uunnsseett, without using the word expansion syntax described above,
       the argument is subject to pathname expansion.  If pathname expansion is not desired, the argument should be quoted.

       The  ddeeccllaarree,  llooccaall,  and rreeaaddoonnllyy builtins each accept a --aa option to specify an indexed array and a --AA option to specify an associative array.  If
       both options are supplied, --AA takes precedence.  The rreeaadd builtin accepts a --aa option to assign a list of words read from the standard  input  to  an
       array.  The sseett and ddeeccllaarree builtins display array values in a way that allows them to be reused as assignments.

EEXXPPAANNSSIIOONN
       Expansion  is performed on the command line after it has been split into words.  There are seven kinds of expansion performed: _b_r_a_c_e _e_x_p_a_n_s_i_o_n, _t_i_l_d_e
       _e_x_p_a_n_s_i_o_n, _p_a_r_a_m_e_t_e_r _a_n_d _v_a_r_i_a_b_l_e _e_x_p_a_n_s_i_o_n, _c_o_m_m_a_n_d _s_u_b_s_t_i_t_u_t_i_o_n, _a_r_i_t_h_m_e_t_i_c _e_x_p_a_n_s_i_o_n, _w_o_r_d _s_p_l_i_t_t_i_n_g, and _p_a_t_h_n_a_m_e _e_x_p_a_n_s_i_o_n.

       The order of expansions is: brace expansion; tilde expansion, parameter and variable expansion, arithmetic expansion, and command substitution  (done
       in a left-to-right fashion); word splitting; and pathname expansion.

       On  systems  that can support it, there is an additional expansion available: _p_r_o_c_e_s_s _s_u_b_s_t_i_t_u_t_i_o_n.  This is performed at the same time as tilde, pa‐
       rameter, variable, and arithmetic expansion and command substitution.

       After these expansions are performed, quote characters present in the original word are removed unless they have been quoted  themselves  (_q_u_o_t_e  _r_e_‐
       _m_o_v_a_l).

       Only brace expansion, word splitting, and pathname expansion can increase the number of words of the expansion; other expansions expand a single word
       to a single word.  The only exceptions to this are the expansions of "$$@@" and "$${{_n_a_m_e[[@@]]}}", and, in most cases, $$** and $${{_n_a_m_e[[**]]}} as explained  above
       (see PPAARRAAMMEETTEERRSS).

   BBrraaccee EExxppaannssiioonn
       _B_r_a_c_e  _e_x_p_a_n_s_i_o_n is a mechanism by which arbitrary strings may be generated.  This mechanism is similar to _p_a_t_h_n_a_m_e _e_x_p_a_n_s_i_o_n, but the filenames gen‐
       erated need not exist.  Patterns to be brace expanded take the form of an optional _p_r_e_a_m_b_l_e, followed by either a series of  comma-separated  strings
       or  a sequence expression between a pair of braces, followed by an optional _p_o_s_t_s_c_r_i_p_t.  The preamble is prefixed to each string contained within the
       braces, and the postscript is then appended to each resulting string, expanding left to right.

       Brace expansions may be nested.  The results of each expanded string are not sorted; left to right order is preserved.  For  example,  a{{d,c,b}}e  ex‐
       pands into `ade ace abe'.

       A  sequence  expression takes the form {{_x...._y[[...._i_n_c_r]]}}, where _x and _y are either integers or single characters, and _i_n_c_r, an optional increment, is an
       integer.  When integers are supplied, the expression expands to each number between _x and _y, inclusive.  Supplied integers may be prefixed with _0  to
       force  each  term to have the same width.  When either _x or _y begins with a zero, the shell attempts to force all generated terms to contain the same
       number of digits, zero-padding where necessary.  When characters are supplied, the expression expands to each character lexicographically  between  _x
       and  _y,  inclusive,  using the default C locale.  Note that both _x and _y must be of the same type.  When the increment is supplied, it is used as the
       difference between each term.  The default increment is 1 or -1 as appropriate.

       Brace expansion is performed before any other expansions, and any characters special to other expansions are preserved in the result.  It is strictly
       textual.  BBaasshh does not apply any syntactic interpretation to the context of the expansion or the text between the braces.

       A  correctly-formed brace expansion must contain unquoted opening and closing braces, and at least one unquoted comma or a valid sequence expression.
       Any incorrectly formed brace expansion is left unchanged.  A {{ or ,, may be quoted with a backslash to prevent its being considered part  of  a  brace
       expression.   To avoid conflicts with parameter expansion, the string $${{ is not considered eligible for brace expansion, and inhibits brace expansion
       until the closing }}.

       This construct is typically used as shorthand when the common prefix of the strings to be generated is longer than in the above example:

              mkdir /usr/local/src/bash/{old,new,dist,bugs}
       or
              chown root /usr/{ucb/{ex,edit},lib/{ex?.?*,how_ex}}

       Brace expansion introduces a slight incompatibility with historical versions of sshh.  sshh does not treat opening or closing braces specially when  they
       appear as part of a word, and preserves them in the output.  BBaasshh removes braces from words as a consequence of brace expansion.  For example, a word
       entered to sshh as _f_i_l_e_{_1_,_2_} appears identically in the output.  The same word is output as _f_i_l_e_1 _f_i_l_e_2 after expansion by bbaasshh.  If strict compatibil‐
       ity  with  sshh  is desired, start bbaasshh with the ++BB option or disable brace expansion with the ++BB option to the sseett command (see SSHHEELLLL BBUUIILLTTIINN CCOOMMMMAANNDDSS
       below).

   TTiillddee EExxppaannssiioonn
       If a word begins with an unquoted tilde character (`~~'), all of the characters preceding the first unquoted slash (or all characters, if there is  no
       unquoted  slash) are considered a _t_i_l_d_e_-_p_r_e_f_i_x.  If none of the characters in the tilde-prefix are quoted, the characters in the tilde-prefix follow‐
       ing the tilde are treated as a possible _l_o_g_i_n _n_a_m_e.  If this login name is the null string, the tilde is replaced with the value of the shell parame‐
       ter HHOOMMEE.  If HHOOMMEE is unset, the home directory of the user executing the shell is substituted instead.  Otherwise, the tilde-prefix is replaced with
       the home directory associated with the specified login name.

       If the tilde-prefix is a `~+', the value of the shell variable PPWWDD replaces the tilde-prefix.  If the tilde-prefix is a `~-', the value of the  shell
       variable  OOLLDDPPWWDD, if it is set, is substituted.  If the characters following the tilde in the tilde-prefix consist of a number _N, optionally prefixed
       by a `+' or a `-', the tilde-prefix is replaced with the corresponding element from the directory stack, as it would be displayed by the ddiirrss builtin
       invoked with the tilde-prefix as an argument.  If the characters following the tilde in the tilde-prefix consist of a number without a leading `+' or
       `-', `+' is assumed.

       If the login name is invalid, or the tilde expansion fails, the word is unchanged.

       Each variable assignment is checked for unquoted tilde-prefixes immediately following a :: or the first ==.  In these cases, tilde  expansion  is  also
       performed.  Consequently, one may use filenames with tildes in assignments to PPAATTHH, MMAAIILLPPAATTHH, and CCDDPPAATTHH, and the shell assigns the expanded value.

       Bash  also performs tilde expansion on words satisfying the conditions of variable assignments (as described above under PPAARRAAMMEETTEERRSS) when they appear
       as arguments to simple commands.  Bash does not do this, except for the _d_e_c_l_a_r_a_t_i_o_n commands listed above, when in _p_o_s_i_x _m_o_d_e.

   PPaarraammeetteerr EExxppaannssiioonn
       The `$$' character introduces parameter expansion, command substitution, or arithmetic expansion.  The parameter name or symbol to be expanded may  be
       enclosed  in  braces, which are optional but serve to protect the variable to be expanded from characters immediately following it which could be in‐
       terpreted as part of the name.

       When braces are used, the matching ending brace is the first `}}' not escaped by a backslash or within a quoted string, and  not  within  an  embedded
       arithmetic expansion, command substitution, or parameter expansion.

       ${_p_a_r_a_m_e_t_e_r}
              The value of _p_a_r_a_m_e_t_e_r is substituted.  The braces are required when _p_a_r_a_m_e_t_e_r is a positional parameter with more than one digit, or when _p_a_‐
              _r_a_m_e_t_e_r is followed by a character which is not to be interpreted as part of its name.  The _p_a_r_a_m_e_t_e_r is a shell parameter as described  above
              PPAARRAAMMEETTEERRSS) or an array reference (AArrrraayyss).

       If the first character of _p_a_r_a_m_e_t_e_r is an exclamation point (!!), and _p_a_r_a_m_e_t_e_r is not a _n_a_m_e_r_e_f, it introduces a level of indirection.  BBaasshh uses the
       value formed by expanding the rest of _p_a_r_a_m_e_t_e_r as the new _p_a_r_a_m_e_t_e_r; this is then expanded and that value is used in  the  rest  of  the  expansion,
       rather than the expansion of the original _p_a_r_a_m_e_t_e_r.  This is known as _i_n_d_i_r_e_c_t _e_x_p_a_n_s_i_o_n.  The value is subject to tilde expansion, parameter expan‐
       sion, command substitution, and arithmetic expansion.  If _p_a_r_a_m_e_t_e_r is a nameref, this expands to the name of the parameter referenced  by  _p_a_r_a_m_e_t_e_r
       instead  of  performing  the  complete indirect expansion.  The exceptions to this are the expansions of ${!!_p_r_e_f_i_x**} and ${!!_n_a_m_e[_@]} described below.
       The exclamation point must immediately follow the left brace in order to introduce indirection.

       In each of the cases below, _w_o_r_d is subject to tilde expansion, parameter expansion, command substitution, and arithmetic expansion.

       When not performing substring expansion, using the forms documented below (e.g., ::--), bbaasshh tests for a parameter that is unset or null.  Omitting the
       colon results in a test only for a parameter that is unset.

       ${_p_a_r_a_m_e_t_e_r::--_w_o_r_d}
              UUssee DDeeffaauulltt VVaalluueess.  If _p_a_r_a_m_e_t_e_r is unset or null, the expansion of _w_o_r_d is substituted.  Otherwise, the value of _p_a_r_a_m_e_t_e_r is substituted.
       ${_p_a_r_a_m_e_t_e_r::==_w_o_r_d}
              AAssssiiggnn DDeeffaauulltt VVaalluueess.  If _p_a_r_a_m_e_t_e_r is unset or null, the expansion of _w_o_r_d is assigned to _p_a_r_a_m_e_t_e_r.  The value of _p_a_r_a_m_e_t_e_r is then substi‐
              tuted.  Positional parameters and special parameters may not be assigned to in this way.
       ${_p_a_r_a_m_e_t_e_r::??_w_o_r_d}
              DDiissppllaayy EErrrroorr iiff NNuullll oorr UUnnsseett.  If _p_a_r_a_m_e_t_e_r is null or unset, the expansion of _w_o_r_d (or a message to that effect if _w_o_r_d is not present)  is
              written to the standard error and the shell, if it is not interactive, exits.  Otherwise, the value of _p_a_r_a_m_e_t_e_r is substituted.
       ${_p_a_r_a_m_e_t_e_r::++_w_o_r_d}
              UUssee AAlltteerrnnaattee VVaalluuee.  If _p_a_r_a_m_e_t_e_r is null or unset, nothing is substituted, otherwise the expansion of _w_o_r_d is substituted.
       ${_p_a_r_a_m_e_t_e_r::_o_f_f_s_e_t}
       ${_p_a_r_a_m_e_t_e_r::_o_f_f_s_e_t::_l_e_n_g_t_h}
              SSuubbssttrriinngg  EExxppaannssiioonn.  Expands to up to _l_e_n_g_t_h characters of the value of _p_a_r_a_m_e_t_e_r starting at the character specified by _o_f_f_s_e_t.  If _p_a_r_a_m_e_‐
              _t_e_r is @@, an indexed array subscripted by @@ or **, or an associative array name, the results differ as described below.  If _l_e_n_g_t_h is  omitted,
              expands  to  the  substring  of  the  value  of _p_a_r_a_m_e_t_e_r starting at the character specified by _o_f_f_s_e_t and extending to the end of the value.
              _l_e_n_g_t_h and _o_f_f_s_e_t are arithmetic expressions (see AARRIITTHHMMEETTIICC EEVVAALLUUAATTIIOONN below).

              If _o_f_f_s_e_t evaluates to a number less than zero, the value is used as an offset in characters from the end  of  the  value  of  _p_a_r_a_m_e_t_e_r.   If
              _l_e_n_g_t_h evaluates to a number less than zero, it is interpreted as an offset in characters from the end of the value of _p_a_r_a_m_e_t_e_r rather than a
              number of characters, and the expansion is the characters between _o_f_f_s_e_t and that result.  Note that a negative offset must be separated  from
              the colon by at least one space to avoid being confused with the ::-- expansion.

              If  _p_a_r_a_m_e_t_e_r  is  @@, the result is _l_e_n_g_t_h positional parameters beginning at _o_f_f_s_e_t.  A negative _o_f_f_s_e_t is taken relative to one greater than
              the greatest positional parameter, so an offset of -1 evaluates to the last positional parameter.  It is an expansion error if  _l_e_n_g_t_h  evalu‐
              ates to a number less than zero.

              If  _p_a_r_a_m_e_t_e_r  is  an  indexed array name subscripted by @ or *, the result is the _l_e_n_g_t_h members of the array beginning with ${_p_a_r_a_m_e_t_e_r[_o_f_f_‐
              _s_e_t]}.  A negative _o_f_f_s_e_t is taken relative to one greater than the maximum index of the specified array.  It is an expansion error if  _l_e_n_g_t_h
              evaluates to a number less than zero.

              Substring expansion applied to an associative array produces undefined results.

              Substring  indexing  is zero-based unless the positional parameters are used, in which case the indexing starts at 1 by default.  If _o_f_f_s_e_t is
              0, and the positional parameters are used, $$00 is prefixed to the list.

       ${!!_p_r_e_f_i_x**}
       ${!!_p_r_e_f_i_x@@}
              NNaammeess mmaattcchhiinngg pprreeffiixx.  Expands to the names of variables whose names begin with _p_r_e_f_i_x, separated by the first character of the  IIFFSS  special
              variable.  When _@ is used and the expansion appears within double quotes, each variable name expands to a separate word.

       ${!!_n_a_m_e[_@]}
       ${!!_n_a_m_e[_*]}
              LLiisstt ooff aarrrraayy kkeeyyss.  If _n_a_m_e is an array variable, expands to the list of array indices (keys) assigned in _n_a_m_e.  If _n_a_m_e is not an array, ex‐
              pands to 0 if _n_a_m_e is set and null otherwise.  When _@ is used and the expansion appears within double quotes, each key expands to  a  separate
              word.

       ${##_p_a_r_a_m_e_t_e_r}
              PPaarraammeetteerr  lleennggtthh.   The  length in characters of the value of _p_a_r_a_m_e_t_e_r is substituted.  If _p_a_r_a_m_e_t_e_r is ** or @@, the value substituted is the
              number of positional parameters.  If _p_a_r_a_m_e_t_e_r is an array name subscripted by ** or @@, the value substituted is the number of elements in  the
              array.  If _p_a_r_a_m_e_t_e_r is an indexed array name subscripted by a negative number, that number is interpreted as relative to one greater than the
              maximum index of _p_a_r_a_m_e_t_e_r, so negative indices count back from the end of the array, and an index of -1 references the last element.

       ${_p_a_r_a_m_e_t_e_r##_w_o_r_d}
       ${_p_a_r_a_m_e_t_e_r####_w_o_r_d}
              RReemmoovvee mmaattcchhiinngg pprreeffiixx ppaatttteerrnn.  The _w_o_r_d is expanded to produce a pattern just as in pathname expansion, and  matched  against  the  expanded
              value  of  _p_a_r_a_m_e_t_e_r  using the rules described under PPaatttteerrnn MMaattcchhiinngg below.  If the pattern matches the beginning of the value of _p_a_r_a_m_e_t_e_r,
              then the result of the expansion is the expanded value of _p_a_r_a_m_e_t_e_r with the shortest matching pattern (the ``##'' case) or the longest  match‐
              ing pattern (the ``####'' case) deleted.  If _p_a_r_a_m_e_t_e_r is @@ or **, the pattern removal operation is applied to each positional parameter in turn,
              and the expansion is the resultant list.  If _p_a_r_a_m_e_t_e_r is an array variable subscripted with @@ or **, the pattern removal operation is  applied
              to each member of the array in turn, and the expansion is the resultant list.

       ${_p_a_r_a_m_e_t_e_r%%_w_o_r_d}
       ${_p_a_r_a_m_e_t_e_r%%%%_w_o_r_d}
              RReemmoovvee  mmaattcchhiinngg  ssuuffffiixx  ppaatttteerrnn.   The _w_o_r_d is expanded to produce a pattern just as in pathname expansion, and matched against the expanded
              value of _p_a_r_a_m_e_t_e_r using the rules described under PPaatttteerrnn MMaattcchhiinngg below.  If the pattern matches a trailing portion of the expanded value of
              _p_a_r_a_m_e_t_e_r,  then  the  result  of  the expansion is the expanded value of _p_a_r_a_m_e_t_e_r with the shortest matching pattern (the ``%%'' case) or the
              longest matching pattern (the ``%%%%'' case) deleted.  If _p_a_r_a_m_e_t_e_r is @@ or **, the pattern removal operation is applied to each  positional  pa‐
              rameter  in turn, and the expansion is the resultant list.  If _p_a_r_a_m_e_t_e_r is an array variable subscripted with @@ or **, the pattern removal op‐
              eration is applied to each member of the array in turn, and the expansion is the resultant list.

       ${_p_a_r_a_m_e_t_e_r//_p_a_t_t_e_r_n//_s_t_r_i_n_g}
              PPaatttteerrnn ssuubbssttiittuuttiioonn.  The _p_a_t_t_e_r_n is expanded to produce a pattern just as in pathname expansion, _P_a_r_a_m_e_t_e_r is expanded and the longest match
              of _p_a_t_t_e_r_n against its value is replaced with _s_t_r_i_n_g.  The match is performed using the rules described under PPaatttteerrnn MMaattcchhiinngg below.  If _p_a_t_‐
              _t_e_r_n begins with //, all matches of _p_a_t_t_e_r_n are replaced with _s_t_r_i_n_g.  Normally only the first match is replaced.  If _p_a_t_t_e_r_n begins with ##, it
              must  match  at the beginning of the expanded value of _p_a_r_a_m_e_t_e_r.  If _p_a_t_t_e_r_n begins with %%, it must match at the end of the expanded value of
              _p_a_r_a_m_e_t_e_r.  If _s_t_r_i_n_g is null, matches of _p_a_t_t_e_r_n are deleted and the // following _p_a_t_t_e_r_n may be omitted.  If the nnooccaasseemmaattcchh shell option  is
              enabled,  the  match  is performed without regard to the case of alphabetic characters.  If _p_a_r_a_m_e_t_e_r is @@ or **, the substitution operation is
              applied to each positional parameter in turn, and the expansion is the resultant list.  If _p_a_r_a_m_e_t_e_r is an array variable subscripted  with  @@
              or **, the substitution operation is applied to each member of the array in turn, and the expansion is the resultant list.

       ${_p_a_r_a_m_e_t_e_r^^_p_a_t_t_e_r_n}
       ${_p_a_r_a_m_e_t_e_r^^^^_p_a_t_t_e_r_n}
       ${_p_a_r_a_m_e_t_e_r,,_p_a_t_t_e_r_n}
       ${_p_a_r_a_m_e_t_e_r,,,,_p_a_t_t_e_r_n}
              CCaassee mmooddiiffiiccaattiioonn.  This expansion modifies the case of alphabetic characters in _p_a_r_a_m_e_t_e_r.  The _p_a_t_t_e_r_n is expanded to produce a pattern just
              as in pathname expansion.  Each character in the expanded value of _p_a_r_a_m_e_t_e_r is tested against _p_a_t_t_e_r_n, and, if it matches  the  pattern,  its
              case  is converted.  The pattern should not attempt to match more than one character.  The ^^ operator converts lowercase letters matching _p_a_t_‐
              _t_e_r_n to uppercase; the ,, operator converts matching uppercase letters to lowercase.  The ^^^^ and ,,,, expansions convert each  matched  character
              in  the expanded value; the ^^ and ,, expansions match and convert only the first character in the expanded value.  If _p_a_t_t_e_r_n is omitted, it is
              treated like a ??, which matches every character.  If _p_a_r_a_m_e_t_e_r is @@ or **, the case modification operation is applied to each positional param‐
              eter in turn, and the expansion is the resultant list.  If _p_a_r_a_m_e_t_e_r is an array variable subscripted with @@ or **, the case modification oper‐
              ation is applied to each member of the array in turn, and the expansion is the resultant list.

       ${_p_a_r_a_m_e_t_e_r@@_o_p_e_r_a_t_o_r}
              PPaarraammeetteerr ttrraannssffoorrmmaattiioonn.  The expansion is either a transformation of the value of _p_a_r_a_m_e_t_e_r or information about _p_a_r_a_m_e_t_e_r itself, depending
              on the value of _o_p_e_r_a_t_o_r.  Each _o_p_e_r_a_t_o_r is a single letter:

              UU      The expansion is a string that is the value of _p_a_r_a_m_e_t_e_r with lowercase alphabetic characters converted to uppercase.
              uu      The expansion is a string that is the value of _p_a_r_a_m_e_t_e_r with the first character converted to uppercase, if it is alphabetic.
              LL      The expansion is a string that is the value of _p_a_r_a_m_e_t_e_r with uppercase alphabetic characters converted to lowercase.
              QQ      The expansion is a string that is the value of _p_a_r_a_m_e_t_e_r quoted in a format that can be reused as input.
              EE      The expansion is a string that is the value of _p_a_r_a_m_e_t_e_r with backslash escape sequences expanded as with the $$''......'' quoting mechanism.
              PP      The expansion is a string that is the result of expanding the value of _p_a_r_a_m_e_t_e_r as if it were a prompt string (see PPRROOMMPPTTIINNGG below).
              AA      The  expansion  is  a string in the form of an assignment statement or ddeeccllaarree command that, if evaluated, will recreate _p_a_r_a_m_e_t_e_r with
                     its attributes and value.
              KK      Produces a possibly-quoted version of the value of _p_a_r_a_m_e_t_e_r, except that it prints the values of indexed and associative arrays  as  a
                     sequence of quoted key-value pairs (see AArrrraayyss above).
              aa      The expansion is a string consisting of flag values representing _p_a_r_a_m_e_t_e_r's attributes.

              If  _p_a_r_a_m_e_t_e_r is @@ or **, the operation is applied to each positional parameter in turn, and the expansion is the resultant list.  If _p_a_r_a_m_e_t_e_r
              is an array variable subscripted with @@ or **, the operation is applied to each member of the array in turn, and the expansion is the resultant
              list.

              The result of the expansion is subject to word splitting and pathname expansion as described below.

   CCoommmmaanndd SSuubbssttiittuuttiioonn
       _C_o_m_m_a_n_d _s_u_b_s_t_i_t_u_t_i_o_n allows the output of a command to replace the command name.  There are two forms:

              $$((_c_o_m_m_a_n_d))
       or
              ``_c_o_m_m_a_n_d``

       BBaasshh  performs  the  expansion  by executing _c_o_m_m_a_n_d in a subshell environment and replacing the command substitution with the standard output of the
       command, with any trailing newlines deleted.  Embedded newlines are not deleted, but they may be removed during word splitting.  The command  substi‐
       tution $$((ccaatt _f_i_l_e)) can be replaced by the equivalent but faster $$((<< _f_i_l_e)).

       When the old-style backquote form of substitution is used, backslash retains its literal meaning except when followed by $$, ``, or \\.  The first back‐
       quote not preceded by a backslash terminates the command substitution.  When using the $(_c_o_m_m_a_n_d) form, all characters between the  parentheses  make
       up the command; none are treated specially.

       Command substitutions may be nested.  To nest when using the backquoted form, escape the inner backquotes with backslashes.

       If the substitution appears within double quotes, word splitting and pathname expansion are not performed on the results.

   AArriitthhmmeettiicc EExxppaannssiioonn
       Arithmetic expansion allows the evaluation of an arithmetic expression and the substitution of the result.  The format for arithmetic expansion is:

              $$((((_e_x_p_r_e_s_s_i_o_n))))

       The  _e_x_p_r_e_s_s_i_o_n is treated as if it were within double quotes, but a double quote inside the parentheses is not treated specially.  All tokens in the
       expression undergo parameter and variable expansion, command substitution, and quote removal.  The result is treated as the arithmetic expression  to
       be evaluated.  Arithmetic expansions may be nested.

       The  evaluation  is performed according to the rules listed below under AARRIITTHHMMEETTIICC EEVVAALLUUAATTIIOONN.  If _e_x_p_r_e_s_s_i_o_n is invalid, bbaasshh prints a message indi‐
       cating failure and no substitution occurs.

   PPrroocceessss SSuubbssttiittuuttiioonn
       _P_r_o_c_e_s_s _s_u_b_s_t_i_t_u_t_i_o_n allows a process's input or output to be referred to using a filename.  It takes the form of <<((_l_i_s_t)) or  >>((_l_i_s_t)).   The  process
       _l_i_s_t  is run asynchronously, and its input or output appears as a filename.  This filename is passed as an argument to the current command as the re‐
       sult of the expansion.  If the >>((_l_i_s_t)) form is used, writing to the file will provide input for _l_i_s_t.  If the <<((_l_i_s_t)) form is used, the  file  passed
       as  an  argument  should  be read to obtain the output of _l_i_s_t.  Process substitution is supported on systems that support named pipes (_F_I_F_O_s) or the
       //ddeevv//ffdd method of naming open files.

       When available, process substitution is performed simultaneously with parameter and variable expansion, command substitution, and  arithmetic  expan‐
       sion.

   WWoorrdd SSpplliittttiinngg
       The  shell  scans the results of parameter expansion, command substitution, and arithmetic expansion that did not occur within double quotes for _w_o_r_d
       _s_p_l_i_t_t_i_n_g.

       The shell treats each character of IIFFSS as a delimiter, and splits the results of the other expansions into words using these characters as field ter‐
       minators.  If IIFFSS is unset, or its value is exactly <<ssppaaccee>><<ttaabb>><<nneewwlliinnee>>, the default, then sequences of <<ssppaaccee>>, <<ttaabb>>, and <<nneewwlliinnee>> at the begin‐
       ning and end of the results of the previous expansions are ignored, and any sequence of IIFFSS characters not at the beginning or end serves to  delimit
       words.   If  IIFFSS has a value other than the default, then sequences of the whitespace characters ssppaaccee, ttaabb, and nneewwlliinnee are ignored at the beginning
       and end of the word, as long as the whitespace character is in the value of IIFFSS (an IIFFSS whitespace character).  Any character in IIFFSS that is not  IIFFSS
       whitespace, along with any adjacent IIFFSS whitespace characters, delimits a field.  A sequence of IIFFSS whitespace characters is also treated as a delim‐
       iter.  If the value of IIFFSS is null, no word splitting occurs.

       Explicit null arguments ("""" or '''') are retained and passed to commands as empty strings.  Unquoted implicit null arguments, resulting from the expan‐
       sion  of  parameters that have no values, are removed.  If a parameter with no value is expanded within double quotes, a null argument results and is
       retained and passed to a command as an empty string.  When a quoted null argument appears as part of a word whose expansion is non-null, the null ar‐
       gument is removed.  That is, the word -d'' becomes -d after word splitting and null argument removal.

       Note that if no expansion occurs, no splitting is performed.

   PPaatthhnnaammee EExxppaannssiioonn
       After  word  splitting,  unless the --ff option has been set, bbaasshh scans each word for the characters **, ??, and [[.  If one of these characters appears,
       and is not quoted, then the word is regarded as a _p_a_t_t_e_r_n, and replaced with an alphabetically sorted list of filenames  matching  the  pattern  (see
       PPaatttteerrnn MMaattcchhiinngg below).  If no matching filenames are found, and the shell option nnuullllgglloobb is not enabled, the word is left unchanged.  If the nnuullll‐‐
       gglloobb option is set, and no matches are found, the word is removed.  If the ffaaiillgglloobb shell option is set, and no matches are found, an  error  message
       is  printed  and the command is not executed.  If the shell option nnooccaasseegglloobb is enabled, the match is performed without regard to the case of alpha‐
       betic characters.  When a pattern is used for pathname expansion, the character ````..''''  at the start of a name or immediately following a  slash  must
       be  matched  explicitly, unless the shell option ddoottgglloobb is set.  The filenames ````..''''  and ````....''''  must always be matched explicitly, even if ddoottgglloobb
       is set.  In other cases, the ````..''''  character is not treated specially.  When matching a pathname, the slash character must always be matched explic‐
       itly  by  a  slash  in  the pattern, but in other matching contexts it can be matched by a special pattern character as described below under PPaatttteerrnn
       MMaattcchhiinngg.  See the description of sshhoopptt below under SSHHEELLLL BBUUIILLTTIINN CCOOMMMMAANNDDSS for a description of the nnooccaasseegglloobb, nnuullllgglloobb, ffaaiillgglloobb, and ddoottgglloobb shell
       options.

       The  GGLLOOBBIIGGNNOORREE  shell variable may be used to restrict the set of file names matching a _p_a_t_t_e_r_n.  If GGLLOOBBIIGGNNOORREE is set, each matching file name that
       also matches one of the patterns in GGLLOOBBIIGGNNOORREE is removed from the list of matches.  If the nnooccaasseegglloobb option is set, the matching against  the  pat‐
       terns  in  GGLLOOBBIIGGNNOORREE  is performed without regard to case.  The filenames ````..''''  and ````....''''  are always ignored when GGLLOOBBIIGGNNOORREE is set and not null.
       However, setting GGLLOOBBIIGGNNOORREE to a non-null value has the effect of enabling the ddoottgglloobb shell option, so all other filenames beginning  with  a  ````..''''
       will  match.   To get the old behavior of ignoring filenames beginning with a ````..'''', make ````..**''''  one of the patterns in GGLLOOBBIIGGNNOORREE.  The ddoottgglloobb op‐
       tion is disabled when GGLLOOBBIIGGNNOORREE is unset.  The pattern matching honors the setting of the eexxttgglloobb shell option.

       PPaatttteerrnn MMaattcchhiinngg

       Any character that appears in a pattern, other than the special pattern characters described below, matches itself.  The NUL character may not  occur
       in  a  pattern.  A backslash escapes the following character; the escaping backslash is discarded when matching.  The special pattern characters must
       be quoted if they are to be matched literally.

       The special pattern characters have the following meanings:

              **      Matches any string, including the null string.  When the gglloobbssttaarr shell option is enabled, and ** is used in a pathname  expansion  con‐
                     text,  two adjacent **s used as a single pattern will match all files and zero or more directories and subdirectories.  If followed by a
                     //, two adjacent **s will match only directories and subdirectories.
              ??      Matches any single character.
              [[......]]  Matches any one of the enclosed characters.  A pair of characters separated by a hyphen denotes a _r_a_n_g_e _e_x_p_r_e_s_s_i_o_n; any character  that
                     falls  between  those  two  characters, inclusive, using the current locale's collating sequence and character set, is matched.  If the
                     first character following the [[ is a !!  or a ^^ then any character not enclosed is matched.  The sorting order of  characters  in  range
                     expressions is determined by the current locale and the values of the LLCC__CCOOLLLLAATTEE or LLCC__AALLLL shell variables, if set.  To obtain the tra‐
                     ditional interpretation of range expressions, where [[aa--dd]] is equivalent to [[aabbccdd]], set value of the LLCC__AALLLL shell variable to CC, or  en‐
                     able  the  gglloobbaasscciiiirraannggeess  shell  option.   A  -- may be matched by including it as the first or last character in the set.  A ]] may be
                     matched by including it as the first character in the set.

                     Within [[ and ]], _c_h_a_r_a_c_t_e_r _c_l_a_s_s_e_s can be specified using the syntax [[::_c_l_a_s_s::]], where _c_l_a_s_s is one of the following classes  defined  in
                     the POSIX standard:
                     aallnnuumm aallpphhaa aasscciiii bbllaannkk ccnnttrrll ddiiggiitt ggrraapphh lloowweerr pprriinntt ppuunncctt ssppaaccee uuppppeerr wwoorrdd xxddiiggiitt
                     A  character  class matches any character belonging to that class.  The wwoorrdd character class matches letters, digits, and the character
                     _.

                     Within [[ and ]], an _e_q_u_i_v_a_l_e_n_c_e _c_l_a_s_s can be specified using the syntax [[==_c==]], which matches all  characters  with  the  same  collation
                     weight (as defined by the current locale) as the character _c.

                     Within [[ and ]], the syntax [[.._s_y_m_b_o_l..]] matches the collating symbol _s_y_m_b_o_l.

       If  the  eexxttgglloobb  shell  option is enabled using the sshhoopptt builtin, several extended pattern matching operators are recognized.  In the following de‐
       scription, a _p_a_t_t_e_r_n_-_l_i_s_t is a list of one or more patterns separated by a ||.  Composite patterns may be formed using one or more  of  the  following
       sub-patterns:

              ??((_p_a_t_t_e_r_n_-_l_i_s_t))
                     Matches zero or one occurrence of the given patterns
              **((_p_a_t_t_e_r_n_-_l_i_s_t))
                     Matches zero or more occurrences of the given patterns
              ++((_p_a_t_t_e_r_n_-_l_i_s_t))
                     Matches one or more occurrences of the given patterns
              @@((_p_a_t_t_e_r_n_-_l_i_s_t))
                     Matches one of the given patterns
              !!((_p_a_t_t_e_r_n_-_l_i_s_t))
                     Matches anything except one of the given patterns

       Complicated  extended pattern matching against long strings is slow, especially when the patterns contain alternations and the strings contain multi‐
       ple matches.  Using separate matches against shorter strings, or using arrays of strings instead of a single long string, may be faster.

   QQuuoottee RReemmoovvaall
       After the preceding expansions, all unquoted occurrences of the characters \\, '', and "" that did not result from one of the above expansions  are  re‐
       moved.

RREEDDIIRREECCTTIIOONN
       Before a command is executed, its input and output may be _r_e_d_i_r_e_c_t_e_d using a special notation interpreted by the shell.  Redirection allows commands'
       file handles to be duplicated, opened, closed, made to refer to different files, and can change the files the command reads from and writes to.   Re‐
       direction may also be used to modify file handles in the current shell execution environment.  The following redirection operators may precede or ap‐
       pear anywhere within a _s_i_m_p_l_e _c_o_m_m_a_n_d or may follow a _c_o_m_m_a_n_d.  Redirections are processed in the order they appear, from left to right.

       Each redirection that may be preceded by a file descriptor number may instead be preceded by a word of the form {_v_a_r_n_a_m_e}.  In this  case,  for  each
       redirection  operator  except >&- and <&-, the shell will allocate a file descriptor greater than or equal to 10 and assign it to _v_a_r_n_a_m_e.  If >&- or
       <&- is preceded by {_v_a_r_n_a_m_e}, the value of _v_a_r_n_a_m_e defines the file descriptor to close.  If {_v_a_r_n_a_m_e} is supplied, the redirection  persists  beyond
       the scope of the command, allowing the shell programmer to manage the file descriptor himself.

       In  the  following  descriptions, if the file descriptor number is omitted, and the first character of the redirection operator is <<, the redirection
       refers to the standard input (file descriptor 0).  If the first character of the redirection operator is >>, the redirection refers  to  the  standard
       output (file descriptor 1).

       The  word following the redirection operator in the following descriptions, unless otherwise noted, is subjected to brace expansion, tilde expansion,
       parameter and variable expansion, command substitution, arithmetic expansion, quote removal, pathname expansion, and word splitting.  If  it  expands
       to more than one word, bbaasshh reports an error.

       Note that the order of redirections is significant.  For example, the command

              ls >> dirlist 2>>&&1

       directs both standard output and standard error to the file _d_i_r_l_i_s_t, while the command

              ls 2>>&&1 >> dirlist

       directs  only  the standard output to file _d_i_r_l_i_s_t, because the standard error was duplicated from the standard output before the standard output was
       redirected to _d_i_r_l_i_s_t.

       BBaasshh handles several filenames specially when they are used in redirections, as described in the following table.  If the operating system  on  which
       bbaasshh is running provides these special files, bash will use them; otherwise it will emulate them internally with the behavior described below.

              //ddeevv//ffdd//_f_d
                     If _f_d is a valid integer, file descriptor _f_d is duplicated.
              //ddeevv//ssttddiinn
                     File descriptor 0 is duplicated.
              //ddeevv//ssttddoouutt
                     File descriptor 1 is duplicated.
              //ddeevv//ssttddeerrrr
                     File descriptor 2 is duplicated.
              //ddeevv//ttccpp//_h_o_s_t//_p_o_r_t
                     If  _h_o_s_t  is a valid hostname or Internet address, and _p_o_r_t is an integer port number or service name, bbaasshh attempts to open the corre‐
                     sponding TCP socket.
              //ddeevv//uuddpp//_h_o_s_t//_p_o_r_t
                     If _h_o_s_t is a valid hostname or Internet address, and _p_o_r_t is an integer port number or service name, bbaasshh attempts to open  the  corre‐
                     sponding UDP socket.

       A failure to open or create a file causes the redirection to fail.

       Redirections using file descriptors greater than 9 should be used with care, as they may conflict with file descriptors the shell uses internally.

   RReeddiirreeccttiinngg IInnppuutt
       Redirection of input causes the file whose name results from the expansion of _w_o_r_d to be opened for reading on file descriptor _n, or the standard in‐
       put (file descriptor 0) if _n is not specified.

       The general format for redirecting input is:

              [_n]<<_w_o_r_d

   RReeddiirreeccttiinngg OOuuttppuutt
       Redirection of output causes the file whose name results from the expansion of _w_o_r_d to be opened for writing on file descriptor _n,  or  the  standard
       output (file descriptor 1) if _n is not specified.  If the file does not exist it is created; if it does exist it is truncated to zero size.

       The general format for redirecting output is:

              [_n]>>_w_o_r_d

       If  the redirection operator is >>, and the nnoocclloobbbbeerr option to the sseett builtin has been enabled, the redirection will fail if the file whose name re‐
       sults from the expansion of _w_o_r_d exists and is a regular file.  If the redirection operator is >>||, or the redirection operator is >> and the nnoocclloobbbbeerr
       option to the sseett builtin command is not enabled, the redirection is attempted even if the file named by _w_o_r_d exists.

   AAppppeennddiinngg RReeddiirreecctteedd OOuuttppuutt
       Redirection  of output in this fashion causes the file whose name results from the expansion of _w_o_r_d to be opened for appending on file descriptor _n,
       or the standard output (file descriptor 1) if _n is not specified.  If the file does not exist it is created.

       The general format for appending output is:

              [_n]>>>>_w_o_r_d

   RReeddiirreeccttiinngg SSttaannddaarrdd OOuuttppuutt aanndd SSttaannddaarrdd EErrrroorr
       This construct allows both the standard output (file descriptor 1) and the standard error output (file descriptor 2) to be  redirected  to  the  file
       whose name is the expansion of _w_o_r_d.

       There are two formats for redirecting standard output and standard error:

              &&>>_w_o_r_d
       and
              >>&&_w_o_r_d

       Of the two forms, the first is preferred.  This is semantically equivalent to

              >>_w_o_r_d 2>>&&1

       When  using  the  second form, _w_o_r_d may not expand to a number or --.  If it does, other redirection operators apply (see DDuupplliiccaattiinngg FFiillee DDeessccrriippttoorrss
       below) for compatibility reasons.

   AAppppeennddiinngg SSttaannddaarrdd OOuuttppuutt aanndd SSttaannddaarrdd EErrrroorr
       This construct allows both the standard output (file descriptor 1) and the standard error output (file descriptor 2) to be appended to the file whose
       name is the expansion of _w_o_r_d.

       The format for appending standard output and standard error is:

              &&>>>>_w_o_r_d

       This is semantically equivalent to

              >>>>_w_o_r_d 2>>&&1

       (see DDuupplliiccaattiinngg FFiillee DDeessccrriippttoorrss below).

   HHeerree DDooccuummeennttss
       This  type  of redirection instructs the shell to read input from the current source until a line containing only _d_e_l_i_m_i_t_e_r (with no trailing blanks)
       is seen.  All of the lines read up to that point are then used as the standard input (or file descriptor _n if _n is specified) for a command.

       The format of here-documents is:

              [_n]<<<<[--]_w_o_r_d
                      _h_e_r_e_-_d_o_c_u_m_e_n_t
              _d_e_l_i_m_i_t_e_r

       No parameter and variable expansion, command substitution, arithmetic expansion, or pathname expansion is performed on _w_o_r_d.  If any part of _w_o_r_d  is
       quoted, the _d_e_l_i_m_i_t_e_r is the result of quote removal on _w_o_r_d, and the lines in the here-document are not expanded.  If _w_o_r_d is unquoted, all lines of
       the here-document are subjected to parameter expansion, command substitution, and arithmetic expansion, the character sequence \\<<nneewwlliinnee>> is ignored,
       and \\ must be used to quote the characters \\, $$, and ``.

       If  the  redirection  operator  is <<<<--, then all leading tab characters are stripped from input lines and the line containing _d_e_l_i_m_i_t_e_r.  This allows
       here-documents within shell scripts to be indented in a natural fashion.

   HHeerree SSttrriinnggss
       A variant of here documents, the format is:

              [_n]<<<<<<_w_o_r_d

       The _w_o_r_d undergoes tilde expansion, parameter and variable expansion, command substitution, arithmetic expansion, and quote removal.  Pathname expan‐
       sion  and word splitting are not performed.  The result is supplied as a single string, with a newline appended, to the command on its standard input
       (or file descriptor _n if _n is specified).

   DDuupplliiccaattiinngg FFiillee DDeessccrriippttoorrss
       The redirection operator

              [_n]<<&&_w_o_r_d

       is used to duplicate input file descriptors.  If _w_o_r_d expands to one or more digits, the file descriptor denoted by _n is made to be a  copy  of  that
       file  descriptor.   If  the digits in _w_o_r_d do not specify a file descriptor open for input, a redirection error occurs.  If _w_o_r_d evaluates to --, file
       descriptor _n is closed.  If _n is not specified, the standard input (file descriptor 0) is used.

       The operator

              [_n]>>&&_w_o_r_d

       is used similarly to duplicate output file descriptors.  If _n is not specified, the standard output (file descriptor 1) is used.  If  the  digits  in
       _w_o_r_d  do  not specify a file descriptor open for output, a redirection error occurs.  If _w_o_r_d evaluates to --, file descriptor _n is closed.  As a spe‐
       cial case, if _n is omitted, and _w_o_r_d does not expand to one or more digits or --, the standard output and standard error are redirected  as  described
       previously.

   MMoovviinngg FFiillee DDeessccrriippttoorrss
       The redirection operator

              [_n]<<&&_d_i_g_i_t--

       moves  the  file descriptor _d_i_g_i_t to file descriptor _n, or the standard input (file descriptor 0) if _n is not specified.  _d_i_g_i_t is closed after being
       duplicated to _n.

       Similarly, the redirection operator

              [_n]>>&&_d_i_g_i_t--

       moves the file descriptor _d_i_g_i_t to file descriptor _n, or the standard output (file descriptor 1) if _n is not specified.

   OOppeenniinngg FFiillee DDeessccrriippttoorrss ffoorr RReeaaddiinngg aanndd WWrriittiinngg
       The redirection operator

              [_n]<<>>_w_o_r_d

       causes the file whose name is the expansion of _w_o_r_d to be opened for both reading and writing on file descriptor _n, or on file descriptor 0 if  _n  is
       not specified.  If the file does not exist, it is created.

AALLIIAASSEESS
       _A_l_i_a_s_e_s  allow  a  string  to be substituted for a word when it is used as the first word of a simple command.  The shell maintains a list of aliases
       that may be set and unset with the aalliiaass and uunnaalliiaass builtin commands (see SSHHEELLLL BBUUIILLTTIINN CCOOMMMMAANNDDSS below).  The first word of each simple command,  if
       unquoted, is checked to see if it has an alias.  If so, that word is replaced by the text of the alias.  The characters //, $$, ``, and == and any of the
       shell _m_e_t_a_c_h_a_r_a_c_t_e_r_s or quoting characters listed above may not appear in an alias name.  The replacement text may contain any valid shell input, in‐
       cluding  shell metacharacters.  The first word of the replacement text is tested for aliases, but a word that is identical to an alias being expanded
       is not expanded a second time.  This means that one may alias llss to llss --FF, for instance, and bbaasshh does not try to recursively expand the  replacement
       text.  If the last character of the alias value is a _b_l_a_n_k, then the next command word following the alias is also checked for alias expansion.

       Aliases are created and listed with the aalliiaass command, and removed with the uunnaalliiaass command.

       There is no mechanism for using arguments in the replacement text.  If arguments are needed, a shell function should be used (see FFUUNNCCTTIIOONNSS below).

       Aliases  are  not expanded when the shell is not interactive, unless the eexxppaanndd__aalliiaasseess shell option is set using sshhoopptt (see the description of sshhoopptt
       under SSHHEELLLL BBUUIILLTTIINN CCOOMMMMAANNDDSS below).

       The rules concerning the definition and use of aliases are somewhat confusing.  BBaasshh always reads at least one complete line of input, and all  lines
       that  make  up a compound command, before executing any of the commands on that line or the compound command.  Aliases are expanded when a command is
       read, not when it is executed.  Therefore, an alias definition appearing on the same line as another command does not take effect until the next line
       of  input  is read.  The commands following the alias definition on that line are not affected by the new alias.  This behavior is also an issue when
       functions are executed.  Aliases are expanded when a function definition is read, not when the function is executed, because a function definition is
       itself  a  command.  As a consequence, aliases defined in a function are not available until after that function is executed.  To be safe, always put
       alias definitions on a separate line, and do not use aalliiaass in compound commands.

       For almost every purpose, aliases are superseded by shell functions.

FFUUNNCCTTIIOONNSS
       A shell function, defined as described above under SSHHEELLLL GGRRAAMMMMAARR, stores a series of commands for later execution.  When the name of a shell function
       is  used as a simple command name, the list of commands associated with that function name is executed.  Functions are executed in the context of the
       current shell; no new process is created to interpret them (contrast this with the execution of a shell script).  When a function  is  executed,  the
       arguments  to the function become the positional parameters during its execution.  The special parameter ## is updated to reflect the change.  Special
       parameter 00 is unchanged.  The first element of the FFUUNNCCNNAAMMEE variable is set to the name of the function while the function is executing.

       All other aspects of the shell execution environment are identical between a function and its caller with these  exceptions:  the  DDEEBBUUGG  and  RREETTUURRNN
       traps (see the description of the ttrraapp builtin under SSHHEELLLL BBUUIILLTTIINN CCOOMMMMAANNDDSS below) are not inherited unless the function has been given the ttrraaccee at‐
       tribute (see the description of the ddeeccllaarree builtin below) or the --oo ffuunnccttrraaccee shell option has been enabled with the sseett builtin (in which case  all
       functions inherit the DDEEBBUUGG and RREETTUURRNN traps), and the EERRRR trap is not inherited unless the --oo eerrrrttrraaccee shell option has been enabled.

       Variables  local to the function may be declared with the llooccaall builtin command.  Ordinarily, variables and their values are shared between the func‐
       tion and its caller.  If a variable is declared llooccaall, the variable's visible scope is restricted to that function and its  children  (including  the
       functions  it calls).  Local variables "shadow" variables with the same name declared at previous scopes.  For instance, a local variable declared in
       a function hides a global variable of the same name: references and assignments refer to the local variable, leaving the global variable  unmodified.
       When the function returns, the global variable is once again visible.

       The  shell  uses _d_y_n_a_m_i_c _s_c_o_p_i_n_g to control a variable's visibility within functions.  With dynamic scoping, visible variables and their values are a
       result of the sequence of function calls that caused execution to reach the current function.  The value of a variable that a function  sees  depends
       on  its  value  within  its caller, if any, whether that caller is the "global" scope or another shell function.  This is also the value that a local
       variable declaration "shadows", and the value that is restored when the function returns.

       For example, if a variable _v_a_r is declared as local in function _f_u_n_c_1, and _f_u_n_c_1 calls another function _f_u_n_c_2, references to  _v_a_r  made  from  within
       _f_u_n_c_2 will resolve to the local variable _v_a_r from _f_u_n_c_1, shadowing any global variable named _v_a_r.

       The  uunnsseett builtin also acts using the same dynamic scope: if a variable is local to the current scope, uunnsseett will unset it; otherwise the unset will
       refer to the variable found in any calling scope as described above.  If a variable at the current local scope is unset, it will remain so  until  it
       is  reset in that scope or until the function returns.  Once the function returns, any instance of the variable at a previous scope will become visi‐
       ble.  If the unset acts on a variable at a previous scope, any instance of a variable with that name that had been shadowed will become visible.

       The FFUUNNCCNNEESSTT variable, if set to a numeric value greater than 0, defines a maximum function nesting level.   Function  invocations  that  exceed  the
       limit cause the entire command to abort.

       If  the builtin command rreettuurrnn is executed in a function, the function completes and execution resumes with the next command after the function call.
       Any command associated with the RREETTUURRNN trap is executed before execution resumes.  When a function completes, the values of the positional parameters
       and the special parameter ## are restored to the values they had prior to the function's execution.

       Function names and definitions may be listed with the --ff option to the ddeeccllaarree or ttyyppeesseett builtin commands.  The --FF option to ddeeccllaarree or ttyyppeesseett will
       list the function names only (and optionally the source file and line number, if the eexxttddeebbuugg shell option is enabled).  Functions may be exported so
       that subshells automatically have them defined with the --ff option to the eexxppoorrtt builtin.  A function definition may be deleted using the --ff option to
       the uunnsseett builtin.

       Functions may be recursive.  The FFUUNNCCNNEESSTT variable may be used to limit the depth of the function call stack and restrict the number of function  in‐
       vocations.  By default, no limit is imposed on the number of recursive calls.

AARRIITTHHMMEETTIICC EEVVAALLUUAATTIIOONN
       The  shell allows arithmetic expressions to be evaluated, under certain circumstances (see the lleett and ddeeccllaarree builtin commands, the (((( compound com‐
       mand, and AArriitthhmmeettiicc EExxppaannssiioonn).  Evaluation is done in fixed-width integers with no check for overflow, though division by 0 is trapped and  flagged
       as  an  error.   The operators and their precedence, associativity, and values are the same as in the C language.  The following list of operators is
       grouped into levels of equal-precedence operators.  The levels are listed in order of decreasing precedence.

       _i_d++++ _i_d----
              variable post-increment and post-decrement
       -- ++    unary minus and plus
       ++++_i_d ----_i_d
              variable pre-increment and pre-decrement
       !! ~~    logical and bitwise negation
       ****     exponentiation
       ** // %%  multiplication, division, remainder
       ++ --    addition, subtraction
       <<<< >>>>  left and right bitwise shifts
       <<== >>== << >>
              comparison
       ==== !!==  equality and inequality
       &&      bitwise AND
       ^^      bitwise exclusive OR
       ||      bitwise OR
       &&&&     logical AND
       ||||     logical OR
       _e_x_p_r??_e_x_p_r::_e_x_p_r
              conditional operator
       == **== //== %%== ++== --== <<<<== >>>>== &&== ^^== ||==
              assignment
       _e_x_p_r_1 ,, _e_x_p_r_2
              comma

       Shell variables are allowed as operands; parameter expansion is performed before the expression is evaluated.  Within an expression, shell  variables
       may  also  be referenced by name without using the parameter expansion syntax.  A shell variable that is null or unset evaluates to 0 when referenced
       by name without using the parameter expansion syntax.  The value of a variable is evaluated as an arithmetic expression when  it  is  referenced,  or
       when a variable which has been given the _i_n_t_e_g_e_r attribute using ddeeccllaarree --ii is assigned a value.  A null value evaluates to 0.  A shell variable need
       not have its _i_n_t_e_g_e_r attribute turned on to be used in an expression.

       Integer constants follow the C language definition, without suffixes or character constants.  Constants with a leading 0  are  interpreted  as  octal
       numbers.   A  leading 0x or 0X denotes hexadecimal.  Otherwise, numbers take the form [_b_a_s_e_#]n, where the optional _b_a_s_e is a decimal number between 2
       and 64 representing the arithmetic base, and _n is a number in that base.  If _b_a_s_e_# is omitted, then base 10 is used.  When specifying _n,  if  a  non-
       digit  is  required,  the digits greater than 9 are represented by the lowercase letters, the uppercase letters, @, and _, in that order.  If _b_a_s_e is
       less than or equal to 36, lowercase and uppercase letters may be used interchangeably to represent numbers between 10 and 35.

       Operators are evaluated in order of precedence.  Sub-expressions in parentheses are evaluated first and may override the precedence rules above.

CCOONNDDIITTIIOONNAALL EEXXPPRREESSSSIIOONNSS
       Conditional expressions are used by the [[[[ compound command and the tteesstt and [[ builtin commands to test file attributes and perform string and arith‐
       metic comparisons.  The tteesstt and [[ commands determine their behavior based on the number of arguments; see the descriptions of those commands for any
       other command-specific actions.

       Expressions are formed from the following unary or binary primaries.  BBaasshh handles several filenames specially when they are used in expressions.  If
       the  operating  system on which bbaasshh is running provides these special files, bash will use them; otherwise it will emulate them internally with this
       behavior: If any _f_i_l_e argument to one of the primaries is of the form _/_d_e_v_/_f_d_/_n, then file descriptor _n is checked.  If the _f_i_l_e argument to  one  of
       the primaries is one of _/_d_e_v_/_s_t_d_i_n, _/_d_e_v_/_s_t_d_o_u_t, or _/_d_e_v_/_s_t_d_e_r_r, file descriptor 0, 1, or 2, respectively, is checked.

       Unless otherwise specified, primaries that operate on files follow symbolic links and operate on the target of the link, rather than the link itself.

       When used with [[[[, the << and >> operators sort lexicographically using the current locale.  The tteesstt command sorts using ASCII ordering.

       --aa _f_i_l_e
              True if _f_i_l_e exists.
       --bb _f_i_l_e
              True if _f_i_l_e exists and is a block special file.
       --cc _f_i_l_e
              True if _f_i_l_e exists and is a character special file.
       --dd _f_i_l_e
              True if _f_i_l_e exists and is a directory.
       --ee _f_i_l_e
              True if _f_i_l_e exists.
       --ff _f_i_l_e
              True if _f_i_l_e exists and is a regular file.
       --gg _f_i_l_e
              True if _f_i_l_e exists and is set-group-id.
       --hh _f_i_l_e
              True if _f_i_l_e exists and is a symbolic link.
       --kk _f_i_l_e
              True if _f_i_l_e exists and its ``sticky'' bit is set.
       --pp _f_i_l_e
              True if _f_i_l_e exists and is a named pipe (FIFO).
       --rr _f_i_l_e
              True if _f_i_l_e exists and is readable.
       --ss _f_i_l_e
              True if _f_i_l_e exists and has a size greater than zero.
       --tt _f_d  True if file descriptor _f_d is open and refers to a terminal.
       --uu _f_i_l_e
              True if _f_i_l_e exists and its set-user-id bit is set.
       --ww _f_i_l_e
              True if _f_i_l_e exists and is writable.
       --xx _f_i_l_e
              True if _f_i_l_e exists and is executable.
       --GG _f_i_l_e
              True if _f_i_l_e exists and is owned by the effective group id.
       --LL _f_i_l_e
              True if _f_i_l_e exists and is a symbolic link.
       --NN _f_i_l_e
              True if _f_i_l_e exists and has been modified since it was last read.
       --OO _f_i_l_e
              True if _f_i_l_e exists and is owned by the effective user id.
       --SS _f_i_l_e
              True if _f_i_l_e exists and is a socket.
       _f_i_l_e_1 --eeff _f_i_l_e_2
              True if _f_i_l_e_1 and _f_i_l_e_2 refer to the same device and inode numbers.
       _f_i_l_e_1 -nntt _f_i_l_e_2
              True if _f_i_l_e_1 is newer (according to modification date) than _f_i_l_e_2, or if _f_i_l_e_1 exists and _f_i_l_e_2 does not.
       _f_i_l_e_1 -oott _f_i_l_e_2
              True if _f_i_l_e_1 is older than _f_i_l_e_2, or if _f_i_l_e_2 exists and _f_i_l_e_1 does not.
       --oo _o_p_t_n_a_m_e
              True if the shell option _o_p_t_n_a_m_e is enabled.  See the list of options under the description of the --oo option to the sseett builtin below.
       --vv _v_a_r_n_a_m_e
              True if the shell variable _v_a_r_n_a_m_e is set (has been assigned a value).
       --RR _v_a_r_n_a_m_e
              True if the shell variable _v_a_r_n_a_m_e is set and is a name reference.
       --zz _s_t_r_i_n_g
              True if the length of _s_t_r_i_n_g is zero.
       _s_t_r_i_n_g
       --nn _s_t_r_i_n_g
              True if the length of _s_t_r_i_n_g is non-zero.

       _s_t_r_i_n_g_1 ==== _s_t_r_i_n_g_2
       _s_t_r_i_n_g_1 == _s_t_r_i_n_g_2
              True  if  the  strings are equal.  == should be used with the tteesstt command for POSIX conformance.  When used with the [[[[ command, this performs
              pattern matching as described above (CCoommppoouunndd CCoommmmaannddss).

       _s_t_r_i_n_g_1 !!== _s_t_r_i_n_g_2
              True if the strings are not equal.

       _s_t_r_i_n_g_1 << _s_t_r_i_n_g_2
              True if _s_t_r_i_n_g_1 sorts before _s_t_r_i_n_g_2 lexicographically.

       _s_t_r_i_n_g_1 >> _s_t_r_i_n_g_2
              True if _s_t_r_i_n_g_1 sorts after _s_t_r_i_n_g_2 lexicographically.

       _a_r_g_1 OOPP _a_r_g_2
              OOPP is one of --eeqq, --nnee, --lltt, --llee, --ggtt, or --ggee.  These arithmetic binary operators return true if _a_r_g_1 is equal to, not  equal  to,  less  than,
              less  than  or  equal  to,  greater than, or greater than or equal to _a_r_g_2, respectively.  _A_r_g_1 and _a_r_g_2 may be positive or negative integers.
              When used with the [[[[ command, _A_r_g_1 and _A_r_g_2 are evaluated as arithmetic expressions (see AARRIITTHHMMEETTIICC EEVVAALLUUAATTIIOONN above).

SSIIMMPPLLEE CCOOMMMMAANNDD EEXXPPAANNSSIIOONN
       When a simple command is executed, the shell performs the following expansions, assignments, and redirections, from left to right, in  the  following
       order.

       1.     The  words that the parser has marked as variable assignments (those preceding the command name) and redirections are saved for later process‐
              ing.

       2.     The words that are not variable assignments or redirections are expanded.  If any words remain after expansion, the first word is taken to  be
              the name of the command and the remaining words are the arguments.

       3.     Redirections are performed as described above under RREEDDIIRREECCTTIIOONN.

       4.     The  text  after the == in each variable assignment undergoes tilde expansion, parameter expansion, command substitution, arithmetic expansion,
              and quote removal before being assigned to the variable.

       If no command name results, the variable assignments affect the current shell environment.  Otherwise, the variables are added to the environment  of
       the  executed  command and do not affect the current shell environment.  If any of the assignments attempts to assign a value to a readonly variable,
       an error occurs, and the command exits with a non-zero status.

       If no command name results, redirections are performed, but do not affect the current shell environment.  A redirection error causes the  command  to
       exit with a non-zero status.

       If there is a command name left after expansion, execution proceeds as described below.  Otherwise, the command exits.  If one of the expansions con‐
       tained a command substitution, the exit status of the command is the exit status of the last command substitution performed.  If there were  no  com‐
       mand substitutions, the command exits with a status of zero.

CCOOMMMMAANNDD EEXXEECCUUTTIIOONN
       After a command has been split into words, if it results in a simple command and an optional list of arguments, the following actions are taken.

       If the command name contains no slashes, the shell attempts to locate it.  If there exists a shell function by that name, that function is invoked as
       described above in FFUUNNCCTTIIOONNSS.  If the name does not match a function, the shell searches for it in the list of shell builtins.  If a match is  found,
       that builtin is invoked.

       If  the name is neither a shell function nor a builtin, and contains no slashes, bbaasshh searches each element of the PPAATTHH for a directory containing an
       executable file by that name.  BBaasshh uses a hash table to remember the full pathnames of executable files (see hhaasshh under SSHHEELLLL BBUUIILLTTIINN  CCOOMMMMAANNDDSS  be‐
       low).   A full search of the directories in PPAATTHH is performed only if the command is not found in the hash table.  If the search is unsuccessful, the
       shell searches for a defined shell function named ccoommmmaanndd__nnoott__ffoouunndd__hhaannddllee.  If that function exists, it is invoked in a separate execution  environ‐
       ment  with the original command and the original command's arguments as its arguments, and the function's exit status becomes the exit status of that
       subshell.  If that function is not defined, the shell prints an error message and returns an exit status of 127.

       If the search is successful, or if the command name contains one or more slashes, the shell executes the named program in a separate execution  envi‐
       ronment.  Argument 0 is set to the name given, and the remaining arguments to the command are set to the arguments given, if any.

       If  this  execution  fails  because the file is not in executable format, and the file is not a directory, it is assumed to be a _s_h_e_l_l _s_c_r_i_p_t, a file
       containing shell commands.  A subshell is spawned to execute it.  This subshell reinitializes itself, so that the effect is as if  a  new  shell  had
       been  invoked  to  handle  the script, with the exception that the locations of commands remembered by the parent (see hhaasshh below under SSHHEELLLL BBUUIILLTTIINN
       CCOOMMMMAANNDDSS) are retained by the child.

       If the program is a file beginning with ##!!, the remainder of the first line specifies an interpreter for the program.  The shell executes the  speci‐
       fied interpreter on operating systems that do not handle this executable format themselves.  The arguments to the interpreter consist of a single op‐
       tional argument following the interpreter name on the first line of the program, followed by the name of the program, followed by the  command  argu‐
       ments, if any.

CCOOMMMMAANNDD EEXXEECCUUTTIIOONN EENNVVIIRROONNMMEENNTT
       The shell has an _e_x_e_c_u_t_i_o_n _e_n_v_i_r_o_n_m_e_n_t, which consists of the following:

       •      open files inherited by the shell at invocation, as modified by redirections supplied to the eexxeecc builtin

       •      the current working directory as set by ccdd, ppuusshhdd, or ppooppdd, or inherited by the shell at invocation

       •      the file creation mode mask as set by uummaasskk or inherited from the shell's parent

       •      current traps set by ttrraapp

       •      shell parameters that are set by variable assignment or with sseett or inherited from the shell's parent in the environment

       •      shell functions defined during execution or inherited from the shell's parent in the environment

       •      options enabled at invocation (either by default or with command-line arguments) or by sseett

       •      options enabled by sshhoopptt

       •      shell aliases defined with aalliiaass

       •      various process IDs, including those of background jobs, the value of $$$$, and the value of PPPPIIDD

       When  a  simple  command other than a builtin or shell function is to be executed, it is invoked in a separate execution environment that consists of
       the following.  Unless otherwise noted, the values are inherited from the shell.

       •      the shell's open files, plus any modifications and additions specified by redirections to the command

       •      the current working directory

       •      the file creation mode mask

       •      shell variables and functions marked for export, along with variables exported for the command, passed in the environment

       •      traps caught by the shell are reset to the values inherited from the shell's parent, and traps ignored by the shell are ignored

       A command invoked in this separate environment cannot affect the shell's execution environment.

       Command substitution, commands grouped with parentheses, and asynchronous commands are invoked in a subshell environment that is a duplicate  of  the
       shell  environment,  except  that  traps caught by the shell are reset to the values that the shell inherited from its parent at invocation.  Builtin
       commands that are invoked as part of a pipeline are also executed in a subshell environment.  Changes made to the subshell environment cannot  affect
       the shell's execution environment.

       Subshells spawned to execute command substitutions inherit the value of the --ee option from the parent shell.  When not in _p_o_s_i_x _m_o_d_e, bbaasshh clears the
       --ee option in such subshells.

       If a command is followed by a && and job control is not active, the default standard input for the command is the empty  file  _/_d_e_v_/_n_u_l_l.   Otherwise,
       the invoked command inherits the file descriptors of the calling shell as modified by redirections.

EENNVVIIRROONNMMEENNTT
       When a program is invoked it is given an array of strings called the _e_n_v_i_r_o_n_m_e_n_t.  This is a list of _n_a_m_e-_v_a_l_u_e pairs, of the form _n_a_m_e=_v_a_l_u_e.

       The  shell  provides several ways to manipulate the environment.  On invocation, the shell scans its own environment and creates a parameter for each
       name found, automatically marking it for _e_x_p_o_r_t to child processes.  Executed commands inherit the environment.  The eexxppoorrtt and ddeeccllaarree  --xx  commands
       allow  parameters and functions to be added to and deleted from the environment.  If the value of a parameter in the environment is modified, the new
       value becomes part of the environment, replacing the old.  The environment inherited by any executed command consists of the shell's initial environ‐
       ment,  whose  values may be modified in the shell, less any pairs removed by the uunnsseett command, plus any additions via the eexxppoorrtt and ddeeccllaarree --xx com‐
       mands.

       The environment for any _s_i_m_p_l_e _c_o_m_m_a_n_d or function may be augmented temporarily by prefixing it with parameter assignments, as described above in PPAA‐‐
       RRAAMMEETTEERRSS.  These assignment statements affect only the environment seen by that command.

       If  the  --kk  option  is set (see the sseett builtin command below), then _a_l_l parameter assignments are placed in the environment for a command, not just
       those that precede the command name.

       When bbaasshh invokes an external command, the variable __ is set to the full filename of the command and passed to that command in its environment.

EEXXIITT SSTTAATTUUSS
       The exit status of an executed command is the value returned by the _w_a_i_t_p_i_d system call or equivalent function.  Exit statuses  fall  between  0  and
       255, though, as explained below, the shell may use values above 125 specially.  Exit statuses from shell builtins and compound commands are also lim‐
       ited to this range.  Under certain circumstances, the shell will use special values to indicate specific failure modes.

       For the shell's purposes, a command which exits with a zero exit status has succeeded.  An exit status of zero indicates success.   A  non-zero  exit
       status indicates failure.  When a command terminates on a fatal signal _N, bbaasshh uses the value of 128+_N as the exit status.

       If  a command is not found, the child process created to execute it returns a status of 127.  If a command is found but is not executable, the return
       status is 126.

       If a command fails because of an error during expansion or redirection, the exit status is greater than zero.

       Shell builtin commands return a status of 0 (_t_r_u_e) if successful, and non-zero (_f_a_l_s_e) if an error occurs while they execute.  All builtins return an
       exit status of 2 to indicate incorrect usage, generally invalid options or missing arguments.

       BBaasshh  itself  returns  the exit status of the last command executed, unless a syntax error occurs, in which case it exits with a non-zero value.  See
       also the eexxiitt builtin command below.

SSIIGGNNAALLSS
       When bbaasshh is interactive, in the absence of any traps, it ignores SSIIGGTTEERRMM (so that kkiillll 00 does not kill an interactive shell), and SSIIGGIINNTT  is  caught
       and  handled  (so  that  the wwaaiitt builtin is interruptible).  In all cases, bbaasshh ignores SSIIGGQQUUIITT.  If job control is in effect, bbaasshh ignores SSIIGGTTTTIINN,
       SSIIGGTTTTOOUU, and SSIIGGTTSSTTPP.

       Non-builtin commands run by bbaasshh have signal handlers set to the values inherited by the shell from its parent.  When job control is not  in  effect,
       asynchronous commands ignore SSIIGGIINNTT and SSIIGGQQUUIITT in addition to these inherited handlers.  Commands run as a result of command substitution ignore the
       keyboard-generated job control signals SSIIGGTTTTIINN, SSIIGGTTTTOOUU, and SSIIGGTTSSTTPP.

       The shell exits by default upon receipt of a SSIIGGHHUUPP.  Before exiting, an interactive shell resends the  SSIIGGHHUUPP  to  all  jobs,  running  or  stopped.
       Stopped jobs are sent SSIIGGCCOONNTT to ensure that they receive the SSIIGGHHUUPP.  To prevent the shell from sending the signal to a particular job, it should be
       removed from the jobs table with the ddiissoowwnn builtin (see SSHHEELLLL BBUUIILLTTIINN CCOOMMMMAANNDDSS below) or marked to not receive SSIIGGHHUUPP using ddiissoowwnn --hh.

       If the hhuuppoonneexxiitt shell option has been set with sshhoopptt, bbaasshh sends a SSIIGGHHUUPP to all jobs when an interactive login shell exits.

       If bbaasshh is waiting for a command to complete and receives a signal for which a trap has been set, the trap will not be  executed  until  the  command
       completes.  When bbaasshh is waiting for an asynchronous command via the wwaaiitt builtin, the reception of a signal for which a trap has been set will cause
       the wwaaiitt builtin to return immediately with an exit status greater than 128, immediately after which the trap is executed.

JJOOBB CCOONNTTRROOLL
       _J_o_b _c_o_n_t_r_o_l refers to the ability to selectively stop (_s_u_s_p_e_n_d) the execution of processes and continue (_r_e_s_u_m_e) their execution at a later point.  A
       user typically employs this facility via an interactive interface supplied jointly by the operating system kernel's terminal driver and bbaasshh.

       The  shell  associates a _j_o_b with each pipeline.  It keeps a table of currently executing jobs, which may be listed with the jjoobbss command.  When bbaasshh
       starts a job asynchronously (in the _b_a_c_k_g_r_o_u_n_d), it prints a line that looks like:

              [1] 25647

       indicating that this job is job number 1 and that the process ID of the last process in the pipeline associated with this job is 25647.  All  of  the
       processes in a single pipeline are members of the same job.  BBaasshh uses the _j_o_b abstraction as the basis for job control.

       To  facilitate the implementation of the user interface to job control, the operating system maintains the notion of a _c_u_r_r_e_n_t _t_e_r_m_i_n_a_l _p_r_o_c_e_s_s _g_r_o_u_p
       _I_D.  Members of this process group (processes whose process group ID is equal to the current terminal process group  ID)  receive  keyboard-generated
       signals  such  as  SSIIGGIINNTT.  These processes are said to be in the _f_o_r_e_g_r_o_u_n_d.  _B_a_c_k_g_r_o_u_n_d processes are those whose process group ID differs from the
       terminal's; such processes are immune to keyboard-generated signals.  Only foreground processes are allowed to read from or, if the user so specifies
       with  stty  tostop, write to the terminal.  Background processes which attempt to read from (write to when stty tostop is in effect) the terminal are
       sent a SSIIGGTTTTIINN ((SSIIGGTTTTOOUU)) signal by the kernel's terminal driver, which, unless caught, suspends the process.

       If the operating system on which bbaasshh is running supports job control, bbaasshh contains facilities to use it.  Typing the _s_u_s_p_e_n_d  character  (typically
       ^^ZZ, Control-Z) while a process is running causes that process to be stopped and returns control to bbaasshh.  Typing the _d_e_l_a_y_e_d _s_u_s_p_e_n_d character (typi‐
       cally ^^YY, Control-Y) causes the process to be stopped when it attempts to read input from the terminal, and control to be returned to bbaasshh.  The user
       may then manipulate the state of this job, using the bbgg command to continue it in the background, the ffgg command to continue it in the foreground, or
       the kkiillll command to kill it.  A ^^ZZ takes effect immediately, and has the additional side effect of causing pending output and typeahead  to  be  dis‐
       carded.

       There  are  a number of ways to refer to a job in the shell.  The character %% introduces a job specification (_j_o_b_s_p_e_c).  Job number _n may be referred
       to as %%nn.  A job may also be referred to using a prefix of the name used to start it, or using a substring that appears in its command line.  For ex‐
       ample,  %%ccee refers to a stopped job whose command name begins with ccee.  If a prefix matches more than one job, bbaasshh reports an error.  Using %%??ccee, on
       the other hand, refers to any job containing the string ccee in its command line.  If the substring matches more than one job, bbaasshh reports  an  error.
       The  symbols %%%% and %%++ refer to the shell's notion of the _c_u_r_r_e_n_t _j_o_b, which is the last job stopped while it was in the foreground or started in the
       background.  The _p_r_e_v_i_o_u_s _j_o_b may be referenced using %%--.  If there is only a single job, %%++ and %%-- can both be used to refer to that job.  In output
       pertaining  to  jobs  (e.g.,  the output of the jjoobbss command), the current job is always flagged with a ++, and the previous job with a --.  A single %
       (with no accompanying job specification) also refers to the current job.

       Simply naming a job can be used to bring it into the foreground: %%11 is a synonym for ````ffgg %%11'''', bringing job 1 from the  background  into  the  fore‐
       ground.  Similarly, ````%%11 &&'''' resumes job 1 in the background, equivalent to ````bbgg %%11''''.

       The  shell  learns  immediately whenever a job changes state.  Normally, bbaasshh waits until it is about to print a prompt before reporting changes in a
       job's status so as to not interrupt any other output.  If the --bb option to the sseett builtin command is enabled, bbaasshh reports such changes immediately.
       Any trap on SSIIGGCCHHLLDD is executed for each child that exits.

       If  an attempt to exit bbaasshh is made while jobs are stopped (or, if the cchheecckkjjoobbss shell option has been enabled using the sshhoopptt builtin, running), the
       shell prints a warning message, and, if the cchheecckkjjoobbss option is enabled, lists the jobs and their statuses.  The jjoobbss command may then be used to in‐
       spect  their  status.   If a second attempt to exit is made without an intervening command, the shell does not print another warning, and any stopped
       jobs are terminated.

       When the shell is waiting for a job or process using the wwaaiitt builtin, and job control is enabled, wwaaiitt will return when the job changes  state.  The
       --ff option causes wwaaiitt to wait until the job or process terminates before returning.

PPRROOMMPPTTIINNGG
       When  executing  interactively,  bbaasshh  displays the primary prompt PPSS11 when it is ready to read a command, and the secondary prompt PPSS22 when it needs
       more input to complete a command.  BBaasshh displays PPSS00 after it reads a command but before executing it.  BBaasshh displays PPSS44 as described  above  before
       tracing  each  command  when  the --xx option is enabled.  BBaasshh allows these prompt strings to be customized by inserting a number of backslash-escaped
       special characters that are decoded as follows:
              \\aa     an ASCII bell character (07)
              \\dd     the date in "Weekday Month Date" format (e.g., "Tue May 26")
              \\DD{{_f_o_r_m_a_t}}
                     the _f_o_r_m_a_t is passed to _s_t_r_f_t_i_m_e(3) and the result is inserted into the prompt string; an empty _f_o_r_m_a_t  results  in  a  locale-specific
                     time representation.  The braces are required
              \\ee     an ASCII escape character (033)
              \\hh     the hostname up to the first `.'
              \\HH     the hostname
              \\jj     the number of jobs currently managed by the shell
              \\ll     the basename of the shell's terminal device name
              \\nn     newline
              \\rr     carriage return
              \\ss     the name of the shell, the basename of $$00 (the portion following the final slash)
              \\tt     the current time in 24-hour HH:MM:SS format
              \\TT     the current time in 12-hour HH:MM:SS format
              \\@@     the current time in 12-hour am/pm format
              \\AA     the current time in 24-hour HH:MM format
              \\uu     the username of the current user
              \\vv     the version of bbaasshh (e.g., 2.00)
              \\VV     the release of bbaasshh, version + patch level (e.g., 2.00.0)
              \\ww     the current working directory, with $$HHOOMMEE abbreviated with a tilde (uses the value of the PPRROOMMPPTT__DDIIRRTTRRIIMM variable)
              \\WW     the basename of the current working directory, with $$HHOOMMEE abbreviated with a tilde
              \\!!     the history number of this command
              \\##     the command number of this command
              \\$$     if the effective UID is 0, a ##, otherwise a $$
              \\_n_n_n   the character corresponding to the octal number _n_n_n
              \\\\     a backslash
              \\[[     begin a sequence of non-printing characters, which could be used to embed a terminal control sequence into the prompt
              \\]]     end a sequence of non-printing characters

       The  command  number and the history number are usually different: the history number of a command is its position in the history list, which may in‐
       clude commands restored from the history file (see HHIISSTTOORRYY below), while the command number is the position in the sequence of commands executed dur‐
       ing  the current shell session.  After the string is decoded, it is expanded via parameter expansion, command substitution, arithmetic expansion, and
       quote removal, subject to the value of the pprroommppttvvaarrss shell option (see the description of the sshhoopptt command under  SSHHEELLLL  BBUUIILLTTIINN  CCOOMMMMAANNDDSS  below).
       This can have unwanted side effects if escaped portions of the string appear within command substitution or contain characters special to word expan‐
       sion.

RREEAADDLLIINNEE
       This is the library that handles reading input when using an interactive shell, unless the ----nnooeeddiittiinngg option is given  at  shell  invocation.   Line
       editing  is also used when using the --ee option to the rreeaadd builtin.  By default, the line editing commands are similar to those of Emacs.  A vi-style
       line editing interface is also available.  Line editing can be enabled at any time using the --oo eemmaaccss or --oo vvii options to the sseett builtin (see  SSHHEELLLL
       BBUUIILLTTIINN CCOOMMMMAANNDDSS below).  To turn off line editing after the shell is running, use the ++oo eemmaaccss or ++oo vvii options to the sseett builtin.

   RReeaaddlliinnee NNoottaattiioonn
       In  this  section,  the Emacs-style notation is used to denote keystrokes.  Control keys are denoted by C-_k_e_y, e.g., C-n means Control-N.  Similarly,
       _m_e_t_a keys are denoted by M-_k_e_y, so M-x means Meta-X.  (On keyboards without a _m_e_t_a key, M-_x means ESC _x, i.e., press the Escape key then the  _x  key.
       This  makes  ESC  the _m_e_t_a _p_r_e_f_i_x.  The combination M-C-_x means ESC-Control-_x, or press the Escape key then hold the Control key while pressing the _x
       key.)

       Readline commands may be given numeric _a_r_g_u_m_e_n_t_s, which normally act as a repeat count.  Sometimes, however, it is the sign of the argument  that  is
       significant.   Passing a negative argument to a command that acts in the forward direction (e.g., kkiillll--lliinnee) causes that command to act in a backward
       direction.  Commands whose behavior with arguments deviates from this are noted below.

       When a command is described as _k_i_l_l_i_n_g text, the text deleted is saved for possible future retrieval (_y_a_n_k_i_n_g).  The killed text is saved in  a  _k_i_l_l
       _r_i_n_g.   Consecutive  kills cause the text to be accumulated into one unit, which can be yanked all at once.  Commands which do not kill text separate
       the chunks of text on the kill ring.

   RReeaaddlliinnee IInniittiiaalliizzaattiioonn
       Readline is customized by putting commands in an initialization file (the _i_n_p_u_t_r_c file).  The name of this file is taken from the value of the  IINNPPUU‐‐
       TTRRCC  variable.   If  that  variable  is  unset,  the  default is _~_/_._i_n_p_u_t_r_c.  If that file  does not exist or cannot be read, the ultimate default is
       _/_e_t_c_/_i_n_p_u_t_r_c.  When a program which uses the readline library starts up, the initialization file is read, and the key bindings and variables are set.
       There  are only a few basic constructs allowed in the readline initialization file.  Blank lines are ignored.  Lines beginning with a ## are comments.
       Lines beginning with a $$ indicate conditional constructs.  Other lines denote key bindings and variable settings.

       The default key-bindings may be changed with an _i_n_p_u_t_r_c file.  Other programs that use this library may add their own commands and bindings.

       For example, placing

              M-Control-u: universal-argument
       or
              C-Meta-u: universal-argument
       into the _i_n_p_u_t_r_c would make M-C-u execute the readline command _u_n_i_v_e_r_s_a_l_-_a_r_g_u_m_e_n_t.

       The following symbolic character names are recognized: _R_U_B_O_U_T, _D_E_L, _E_S_C, _L_F_D, _N_E_W_L_I_N_E, _R_E_T, _R_E_T_U_R_N, _S_P_C, _S_P_A_C_E, and _T_A_B.

       In addition to command names, readline allows keys to be bound to a string that is inserted when the key is pressed (a _m_a_c_r_o).

   RReeaaddlliinnee KKeeyy BBiinnddiinnggss
       The syntax for controlling key bindings in the _i_n_p_u_t_r_c file is simple.  All that is required is the name of the command or the text of a macro and  a
       key sequence to which it should be bound.  The name may be specified in one of two ways: as a symbolic key name, possibly with _M_e_t_a_- or _C_o_n_t_r_o_l_- pre‐
       fixes, or as a key sequence.

       When using the form kkeeyynnaammee:_f_u_n_c_t_i_o_n_-_n_a_m_e or _m_a_c_r_o, _k_e_y_n_a_m_e is the name of a key spelled out in English.  For example:

              Control-u: universal-argument
              Meta-Rubout: backward-kill-word
              Control-o: "> output"

       In the above example, _C_-_u is bound to the function uunniivveerrssaall--aarrgguummeenntt, _M_-_D_E_L is bound to the function bbaacckkwwaarrdd--kkiillll--wwoorrdd, and _C_-_o is bound to run the
       macro expressed on the right hand side (that is, to insert the text ``> output'' into the line).

       In  the second form, ""kkeeyysseeqq"":_f_u_n_c_t_i_o_n_-_n_a_m_e or _m_a_c_r_o, kkeeyysseeqq differs from kkeeyynnaammee above in that strings denoting an entire key sequence may be speci‐
       fied by placing the sequence within double quotes.  Some GNU Emacs style key escapes can be used, as in the following example, but the symbolic char‐
       acter names are not recognized.

              "\C-u": universal-argument
              "\C-x\C-r": re-read-init-file
              "\e[11~": "Function Key 1"

       In this example, _C_-_u is again bound to the function uunniivveerrssaall--aarrgguummeenntt.  _C_-_x _C_-_r is bound to the function rree--rreeaadd--iinniitt--ffiillee, and _E_S_C _[ _1 _1 _~ is bound
       to insert the text ``Function Key 1''.

       The full set of GNU Emacs style escape sequences is
              \\CC--    control prefix
              \\MM--    meta prefix
              \\ee     an escape character
              \\\\     backslash
              \\""     literal "
              \\''     literal '

       In addition to the GNU Emacs style escape sequences, a second set of backslash escapes is available:
              \\aa     alert (bell)
              \\bb     backspace
              \\dd     delete
              \\ff     form feed
              \\nn     newline
              \\rr     carriage return
              \\tt     horizontal tab
              \\vv     vertical tab
              \\_n_n_n   the eight-bit character whose value is the octal value _n_n_n (one to three digits)
              \\xx_H_H   the eight-bit character whose value is the hexadecimal value _H_H (one or two hex digits)

       When entering the text of a macro, single or double quotes must be used to indicate a macro definition.  Unquoted text is assumed to  be  a  function
       name.   In the macro body, the backslash escapes described above are expanded.  Backslash will quote any other character in the macro text, including
       " and '.

       BBaasshh allows the current readline key bindings to be displayed or modified with the bbiinndd builtin command.  The editing mode may be switched during in‐
       teractive use by using the --oo option to the sseett builtin command (see SSHHEELLLL BBUUIILLTTIINN CCOOMMMMAANNDDSS below).

   RReeaaddlliinnee VVaarriiaabblleess
       Readline has variables that can be used to further customize its behavior.  A variable may be set in the _i_n_p_u_t_r_c file with a statement of the form

              sseett _v_a_r_i_a_b_l_e_-_n_a_m_e _v_a_l_u_e
       or using the bbiinndd builtin command (see SSHHEELLLL BBUUIILLTTIINN CCOOMMMMAANNDDSS below).

       Except  where  noted,  readline  variables  can take the values OOnn or OOffff (without regard to case).  Unrecognized variable names are ignored.  When a
       variable value is read, empty or null values, "on" (case-insensitive), and "1" are equivalent to OOnn.  All other values are equivalent  to  OOffff.   The
       variables and their default values are:

       bbeellll--ssttyyllee ((aauuddiibbllee))
              Controls what happens when readline wants to ring the terminal bell.  If set to nnoonnee, readline never rings the bell.  If set to vviissiibbllee, read‐
              line uses a visible bell if one is available.  If set to aauuddiibbllee, readline attempts to ring the terminal's bell.
       bbiinndd--ttttyy--ssppeecciiaall--cchhaarrss ((OOnn))
              If set to OOnn, readline attempts to bind the control characters treated specially by the kernel's terminal driver  to  their  readline  equiva‐
              lents.
       bblliinnkk--mmaattcchhiinngg--ppaarreenn ((OOffff))
              If set to OOnn, readline attempts to briefly move the cursor to an opening parenthesis when a closing parenthesis is inserted.
       ccoolloorreedd--ccoommpplleettiioonn--pprreeffiixx ((OOffff))
              If  set  to OOnn, when listing completions, readline displays the common prefix of the set of possible completions using a different color.  The
              color definitions are taken from the value of the LLSS__CCOOLLOORRSS environment variable.
       ccoolloorreedd--ssttaattss ((OOffff))
              If set to OOnn, readline displays possible completions using different colors to indicate their file type.  The color definitions are taken from
              the value of the LLSS__CCOOLLOORRSS environment variable.
       ccoommmmeenntt--bbeeggiinn ((````##''''))
              The  string  that is inserted when the readline iinnsseerrtt--ccoommmmeenntt command is executed.  This command is bound to MM--## in emacs mode and to ## in vi
              command mode.
       ccoommpplleettiioonn--ddiissppllaayy--wwiiddtthh ((--11))
              The number of screen columns used to display possible matches when performing completion.  The value is ignored  if  it  is  less  than  0  or
              greater than the terminal screen width.  A value of 0 will cause matches to be displayed one per line.  The default value is -1.
       ccoommpplleettiioonn--iiggnnoorree--ccaassee ((OOffff))
              If set to OOnn, readline performs filename matching and completion in a case-insensitive fashion.
       ccoommpplleettiioonn--mmaapp--ccaassee ((OOffff))
              If set to OOnn, and ccoommpplleettiioonn--iiggnnoorree--ccaassee is enabled, readline treats hyphens (_-) and underscores (__) as equivalent when performing case-insen‐
              sitive filename matching and completion.
       ccoommpplleettiioonn--pprreeffiixx--ddiissppllaayy--lleennggtthh ((00))
              The length in characters of the common prefix of a list of possible completions that is displayed without modification.  When set to  a  value
              greater than zero, common prefixes longer than this value are replaced with an ellipsis when displaying possible completions.
       ccoommpplleettiioonn--qquueerryy--iitteemmss ((110000))
              This  determines  when the user is queried about viewing the number of possible completions generated by the ppoossssiibbllee--ccoommpplleettiioonnss command.  It
              may be set to any integer value greater than or equal to zero.  If the number of possible completions is greater than or equal to the value of
              this variable, readline will ask whether or not the user wishes to view them; otherwise they are simply listed on the terminal.
       ccoonnvveerrtt--mmeettaa ((OOnn))
              If  set  to OOnn, readline will convert characters with the eighth bit set to an ASCII key sequence by stripping the eighth bit and prefixing an
              escape character (in effect, using escape as the _m_e_t_a _p_r_e_f_i_x).  The default is _O_n, but readline will set it to  _O_f_f  if  the  locale  contains
              eight-bit characters.
       ddiissaabbllee--ccoommpplleettiioonn ((OOffff))
              If set to OOnn, readline will inhibit word completion.  Completion characters will be inserted into the line as if they had been mapped to sseellff--
              iinnsseerrtt.
       eecchhoo--ccoonnttrrooll--cchhaarraacctteerrss ((OOnn))
              When set to OOnn, on operating systems that indicate they support it, readline echoes a character corresponding to a signal generated  from  the
              keyboard.
       eeddiittiinngg--mmooddee ((eemmaaccss))
              Controls whether readline begins with a set of key bindings similar to _E_m_a_c_s or _v_i.  eeddiittiinngg--mmooddee can be set to either eemmaaccss or vvii.
       eemmaaccss--mmooddee--ssttrriinngg ((@@))
              If  the  _s_h_o_w_-_m_o_d_e_-_i_n_-_p_r_o_m_p_t  variable  is enabled, this string is displayed immediately before the last line of the primary prompt when emacs
              editing mode is active.  The value is expanded like a key binding, so the standard set of meta- and control prefixes and backslash escape  se‐
              quences  is available.  Use the \1 and \2 escapes to begin and end sequences of non-printing characters, which can be used to embed a terminal
              control sequence into the mode string.
       eennaabbllee--bbrraacckkeetteedd--ppaassttee ((OOnn))
              When set to OOnn, readline will configure the terminal in a way that will enable it to insert each paste into the editing  buffer  as  a  single
              string  of  characters,  instead of treating each character as if it had been read from the keyboard.  This can prevent pasted characters from
              being interpreted as editing commands.
       eennaabbllee--kkeeyyppaadd ((OOffff))
              When set to OOnn, readline will try to enable the application keypad when it is called.  Some systems need this to enable the arrow keys.
       eennaabbllee--mmeettaa--kkeeyy ((OOnn))
              When set to OOnn, readline will try to enable any meta modifier key the terminal claims to support when it is called.  On  many  terminals,  the
              meta key is used to send eight-bit characters.
       eexxppaanndd--ttiillddee ((OOffff))
              If set to OOnn, tilde expansion is performed when readline attempts word completion.
       hhiissttoorryy--pprreesseerrvvee--ppooiinntt ((OOffff))
              If  set to OOnn, the history code attempts to place point at the same location on each history line retrieved with pprreevviioouuss--hhiissttoorryy or nneexxtt--hhiiss‐‐
              ttoorryy.
       hhiissttoorryy--ssiizzee ((uunnsseett))
              Set the maximum number of history entries saved in the history list.  If set to zero, any existing history entries are deleted and no new  en‐
              tries  are  saved.  If set to a value less than zero, the number of history entries is not limited.  By default, the number of history entries
              is set to the value of the HHIISSTTSSIIZZEE shell variable.  If an attempt is made to set _h_i_s_t_o_r_y_-_s_i_z_e to a non-numeric value, the maximum  number  of
              history entries will be set to 500.
       hhoorriizzoonnttaall--ssccrroollll--mmooddee ((OOffff))
              When  set to OOnn, makes readline use a single line for display, scrolling the input horizontally on a single screen line when it becomes longer
              than the screen width rather than wrapping to a new line.  This setting is automatically enabled for terminals of height 1.
       iinnppuutt--mmeettaa ((OOffff))
              If set to OOnn, readline will enable eight-bit input (that is, it will not strip the eighth bit from the characters  it  reads),  regardless  of
              what  the terminal claims it can support.  The name mmeettaa--ffllaagg is a synonym for this variable.  The default is _O_f_f, but readline will set it to
              _O_n if the locale contains eight-bit characters.
       iisseeaarrcchh--tteerrmmiinnaattoorrss ((````CC--[[CC--JJ''''))
              The string of characters that should terminate an incremental search without subsequently executing the character as a command.  If this vari‐
              able has not been given a value, the characters _E_S_C and _C_-_J will terminate an incremental search.
       kkeeyymmaapp ((eemmaaccss))
              Set  the  current readline keymap.  The set of valid keymap names is _e_m_a_c_s_, _e_m_a_c_s_-_s_t_a_n_d_a_r_d_, _e_m_a_c_s_-_m_e_t_a_, _e_m_a_c_s_-_c_t_l_x_, _v_i_, _v_i_-_c_o_m_m_a_n_d, and _v_i_-_i_n_‐
              _s_e_r_t.  _v_i is equivalent to _v_i_-_c_o_m_m_a_n_d; _e_m_a_c_s is equivalent to _e_m_a_c_s_-_s_t_a_n_d_a_r_d.  The default value is _e_m_a_c_s; the value of eeddiittiinngg--mmooddee also  af‐
              fects the default keymap.
       kkeeyysseeqq--ttiimmeeoouutt ((550000))
              Specifies  the  duration  _r_e_a_d_l_i_n_e will wait for a character when reading an ambiguous key sequence (one that can form a complete key sequence
              using the input read so far, or can take additional input to complete a longer key sequence).  If no input is  received  within  the  timeout,
              _r_e_a_d_l_i_n_e  will use the shorter but complete key sequence.  The value is specified in milliseconds, so a value of 1000 means that _r_e_a_d_l_i_n_e will
              wait one second for additional input.  If this variable is set to a value less than or equal to zero, or to a non-numeric value, _r_e_a_d_l_i_n_e will
              wait until another key is pressed to decide which key sequence to complete.
       mmaarrkk--ddiirreeccttoorriieess ((OOnn))
              If set to OOnn, completed directory names have a slash appended.
       mmaarrkk--mmooddiiffiieedd--lliinneess ((OOffff))
              If set to OOnn, history lines that have been modified are displayed with a preceding asterisk (**).
       mmaarrkk--ssyymmlliinnkkeedd--ddiirreeccttoorriieess ((OOffff))
              If set to OOnn, completed names which are symbolic links to directories have a slash appended (subject to the value of mmaarrkk--ddiirreeccttoorriieess).
       mmaattcchh--hhiiddddeenn--ffiilleess ((OOnn))
              This variable, when set to OOnn, causes readline to match files whose names begin with a `.' (hidden files) when performing filename completion.
              If set to OOffff, the leading `.' must be supplied by the user in the filename to be completed.
       mmeennuu--ccoommpplleettee--ddiissppllaayy--pprreeffiixx ((OOffff))
              If set to OOnn, menu completion displays the common prefix of the list of possible completions (which may be empty) before cycling  through  the
              list.
       oouuttppuutt--mmeettaa ((OOffff))
              If  set  to OOnn, readline will display characters with the eighth bit set directly rather than as a meta-prefixed escape sequence.  The default
              is _O_f_f, but readline will set it to _O_n if the locale contains eight-bit characters.
       ppaaggee--ccoommpplleettiioonnss ((OOnn))
              If set to OOnn, readline uses an internal _m_o_r_e-like pager to display a screenful of possible completions at a time.
       pprriinntt--ccoommpplleettiioonnss--hhoorriizzoonnttaallllyy ((OOffff))
              If set to OOnn, readline will display completions with matches sorted horizontally in alphabetical order, rather than down the screen.
       rreevveerrtt--aallll--aatt--nneewwlliinnee ((OOffff))
              If set to OOnn, readline will undo all changes to history lines before returning when aacccceepptt--lliinnee is executed.  By default, history lines may be
              modified and retain individual undo lists across calls to rreeaaddlliinnee.
       sshhooww--aallll--iiff--aammbbiigguuoouuss ((OOffff))
              This  alters  the  default  behavior  of the completion functions.  If set to OOnn, words which have more than one possible completion cause the
              matches to be listed immediately instead of ringing the bell.
       sshhooww--aallll--iiff--uunnmmooddiiffiieedd ((OOffff))
              This alters the default behavior of the completion functions in a fashion similar to sshhooww--aallll--iiff--aammbbiigguuoouuss.  If set to OOnn,  words  which  have
              more  than  one  possible  completion without any possible partial completion (the possible completions don't share a common prefix) cause the
              matches to be listed immediately instead of ringing the bell.
       sshhooww--mmooddee--iinn--pprroommpptt ((OOffff))
              If set to OOnn, add a string to the beginning of the prompt indicating the editing mode: emacs, vi command, or vi insertion.  The  mode  strings
              are user-settable (e.g., _e_m_a_c_s_-_m_o_d_e_-_s_t_r_i_n_g).
       sskkiipp--ccoommpplleetteedd--tteexxtt ((OOffff))
              If  set to OOnn, this alters the default completion behavior when inserting a single match into the line.  It's only active when performing com‐
              pletion in the middle of a word.  If enabled, readline does not insert characters from the completion that match characters after point in the
              word being completed, so portions of the word following the cursor are not duplicated.
       vvii--ccmmdd--mmooddee--ssttrriinngg ((((ccmmdd))))
              If  the _s_h_o_w_-_m_o_d_e_-_i_n_-_p_r_o_m_p_t variable is enabled, this string is displayed immediately before the last line of the primary prompt when vi edit‐
              ing mode is active and in command mode.  The value is expanded like a key binding, so the standard set of meta- and control prefixes and back‐
              slash  escape  sequences  is available.  Use the \1 and \2 escapes to begin and end sequences of non-printing characters, which can be used to
              embed a terminal control sequence into the mode string.
       vvii--iinnss--mmooddee--ssttrriinngg ((((iinnss))))
              If the _s_h_o_w_-_m_o_d_e_-_i_n_-_p_r_o_m_p_t variable is enabled, this string is displayed immediately before the last line of the primary prompt when vi  edit‐
              ing  mode  is  active  and in insertion mode.  The value is expanded like a key binding, so the standard set of meta- and control prefixes and
              backslash escape sequences is available.  Use the \1 and \2 escapes to begin and end sequences of non-printing characters, which can  be  used
              to embed a terminal control sequence into the mode string.
       vviissiibbllee--ssttaattss ((OOffff))
              If set to OOnn, a character denoting a file's type as reported by _s_t_a_t(2) is appended to the filename when listing possible completions.

   RReeaaddlliinnee CCoonnddiittiioonnaall CCoonnssttrruuccttss
       Readline implements a facility similar in spirit to the conditional compilation features of the C preprocessor which allows key bindings and variable
       settings to be performed as the result of tests.  There are four parser directives used.

       $$iiff    The $$iiff construct allows bindings to be made based on the editing mode, the terminal being used, or the application using readline.  The  text
              of the test, after any comparison operator,
               extends to the end of the line; unless otherwise noted, no characters are required to isolate it.

              mmooddee   The  mmooddee== form of the $$iiff directive is used to test whether readline is in emacs or vi mode.  This may be used in conjunction with the
                     sseett kkeeyymmaapp command, for instance, to set bindings in the _e_m_a_c_s_-_s_t_a_n_d_a_r_d and _e_m_a_c_s_-_c_t_l_x keymaps only if  readline  is  starting  out  in
                     emacs mode.

              tteerrmm   The  tteerrmm== form may be used to include terminal-specific key bindings, perhaps to bind the key sequences output by the terminal's func‐
                     tion keys.  The word on the right side of the == is tested against both the full name of the terminal and the portion  of  the  terminal
                     name before the first --.  This allows _s_u_n to match both _s_u_n and _s_u_n_-_c_m_d, for instance.

              vveerrssiioonn
                     The  vveerrssiioonn  test  may be used to perform comparisons against specific readline versions.  The vveerrssiioonn expands to the current readline
                     version.  The set of comparison operators includes ==, (and ====), !!==, <<==, >>==, <<, and >>.  The version number supplied on the right side of
                     the  operator  consists  of  a major version number, an optional decimal point, and an optional minor version (e.g., 77..11). If the minor
                     version is omitted, it is assumed to be 00.  The operator may be separated from the string vveerrssiioonn and from the version number  argument
                     by whitespace.

              aapppplliiccaattiioonn
                     The  aapppplliiccaattiioonn construct is used to include application-specific settings.  Each program using the readline library sets the _a_p_p_l_i_c_a_‐
                     _t_i_o_n _n_a_m_e, and an initialization file can test for a particular value.  This could be used to bind key sequences  to  functions  useful
                     for a specific program.  For instance, the following command adds a key sequence that quotes the current or previous word in bbaasshh:

                     $$iiff Bash
                     # Quote the current or previous word
                     "\C-xq": "\eb\"\ef\""
                     $$eennddiiff

              _v_a_r_i_a_b_l_e
                     The _v_a_r_i_a_b_l_e construct provides simple equality tests for readline variables and values.  The permitted comparison operators are _=, _=_=,
                     and _!_=.  The variable name must be separated from the comparison operator by whitespace; the operator may be separated from  the  value
                     on  the  right  hand side by whitespace.  Both string and boolean variables may be tested. Boolean variables must be tested against the
                     values _o_n and _o_f_f.

       $$eennddiiff This command, as seen in the previous example, terminates an $$iiff command.

       $$eellssee  Commands in this branch of the $$iiff directive are executed if the test fails.

       $$iinncclluuddee
              This directive takes a single filename as an argument and reads commands and bindings from that file.  For example,  the  following  directive
              would read _/_e_t_c_/_i_n_p_u_t_r_c:

              $$iinncclluuddee  _/_e_t_c_/_i_n_p_u_t_r_c

   SSeeaarrcchhiinngg
       Readline  provides  commands  for  searching  through the command history (see HHIISSTTOORRYY below) for lines containing a specified string.  There are two
       search modes: _i_n_c_r_e_m_e_n_t_a_l and _n_o_n_-_i_n_c_r_e_m_e_n_t_a_l.

       Incremental searches begin before the user has finished typing the search string.  As each character of the search string is typed, readline displays
       the  next  entry from the history matching the string typed so far.  An incremental search requires only as many characters as needed to find the de‐
       sired history entry.  The characters present in the value of the iisseeaarrcchh--tteerrmmiinnaattoorrss variable are used to terminate an incremental search.   If  that
       variable has not been assigned a value the Escape and Control-J characters will terminate an incremental search.  Control-G will abort an incremental
       search and restore the original line.  When the search is terminated, the history entry containing the search string becomes the current line.

       To find other matching entries in the history list, type Control-S or Control-R as appropriate.  This will search backward or forward in the  history
       for the next entry matching the search string typed so far.  Any other key sequence bound to a readline command will terminate the search and execute
       that command.  For instance, a _n_e_w_l_i_n_e will terminate the search and accept the line, thereby executing the command from the history list.

       Readline remembers the last incremental search string.  If two Control-Rs are typed without any intervening characters defining a new search  string,
       any remembered search string is used.

       Non-incremental  searches  read the entire search string before starting to search for matching history lines.  The search string may be typed by the
       user or be part of the contents of the current line.

   RReeaaddlliinnee CCoommmmaanndd NNaammeess
       The following is a list of the names of the commands and the default key sequences to which they are bound.  Command names  without  an  accompanying
       key  sequence  are unbound by default.  In the following descriptions, _p_o_i_n_t refers to the current cursor position, and _m_a_r_k refers to a cursor posi‐
       tion saved by the sseett--mmaarrkk command.  The text between the point and mark is referred to as the _r_e_g_i_o_n.

   CCoommmmaannddss ffoorr MMoovviinngg
       bbeeggiinnnniinngg--ooff--lliinnee ((CC--aa))
              Move to the start of the current line.
       eenndd--ooff--lliinnee ((CC--ee))
              Move to the end of the line.
       ffoorrwwaarrdd--cchhaarr ((CC--ff))
              Move forward a character.
       bbaacckkwwaarrdd--cchhaarr ((CC--bb))
              Move back a character.
       ffoorrwwaarrdd--wwoorrdd ((MM--ff))
              Move forward to the end of the next word.  Words are composed of alphanumeric characters (letters and digits).
       bbaacckkwwaarrdd--wwoorrdd ((MM--bb))
              Move back to the start of the current or previous word.  Words are composed of alphanumeric characters (letters and digits).
       sshheellll--ffoorrwwaarrdd--wwoorrdd
              Move forward to the end of the next word.  Words are delimited by non-quoted shell metacharacters.
       sshheellll--bbaacckkwwaarrdd--wwoorrdd
              Move back to the start of the current or previous word.  Words are delimited by non-quoted shell metacharacters.
       pprreevviioouuss--ssccrreeeenn--lliinnee
              Attempt to move point to the same physical screen column on the previous physical screen line. This will not have the desired  effect  if  the
              current  Readline  line  does not take up more than one physical line or if point is not greater than the length of the prompt plus the screen
              width.
       nneexxtt--ssccrreeeenn--lliinnee
              Attempt to move point to the same physical screen column on the next physical screen line. This will not have the desired effect if  the  cur‐
              rent  Readline  line does not take up more than one physical line or if the length of the current Readline line is not greater than the length
              of the prompt plus the screen width.
       cclleeaarr--ddiissppllaayy ((MM--CC--ll))
              Clear the screen and, if possible, the terminal's scrollback buffer, then redraw the current line, leaving the current line at the top of  the
              screen.
       cclleeaarr--ssccrreeeenn ((CC--ll))
              Clear the screen, then redraw the current line, leaving the current line at the top of the screen.  With an argument, refresh the current line
              without clearing the screen.
       rreeddrraaww--ccuurrrreenntt--lliinnee
              Refresh the current line.

   CCoommmmaannddss ffoorr MMaanniippuullaattiinngg tthhee HHiissttoorryy
       aacccceepptt--lliinnee ((NNeewwlliinnee,, RReettuurrnn))
              Accept the line regardless of where the cursor is.  If this line is non-empty, add it to the history list according to the state of the  HHIISSTT‐‐
              CCOONNTTRROOLL variable.  If the line is a modified history line, then restore the history line to its original state.
       pprreevviioouuss--hhiissttoorryy ((CC--pp))
              Fetch the previous command from the history list, moving back in the list.
       nneexxtt--hhiissttoorryy ((CC--nn))
              Fetch the next command from the history list, moving forward in the list.
       bbeeggiinnnniinngg--ooff--hhiissttoorryy ((MM--<<))
              Move to the first line in the history.
       eenndd--ooff--hhiissttoorryy ((MM-->>))
              Move to the end of the input history, i.e., the line currently being entered.
       rreevveerrssee--sseeaarrcchh--hhiissttoorryy ((CC--rr))
              Search backward starting at the current line and moving `up' through the history as necessary.  This is an incremental search.
       ffoorrwwaarrdd--sseeaarrcchh--hhiissttoorryy ((CC--ss))
              Search forward starting at the current line and moving `down' through the history as necessary.  This is an incremental search.
       nnoonn--iinnccrreemmeennttaall--rreevveerrssee--sseeaarrcchh--hhiissttoorryy ((MM--pp))
              Search backward through the history starting at the current line using a non-incremental search for a string supplied by the user.
       nnoonn--iinnccrreemmeennttaall--ffoorrwwaarrdd--sseeaarrcchh--hhiissttoorryy ((MM--nn))
              Search forward through the history using a non-incremental search for a string supplied by the user.
       hhiissttoorryy--sseeaarrcchh--ffoorrwwaarrdd
              Search  forward through the history for the string of characters between the start of the current line and the point.  This is a non-incremen‐
              tal search.
       hhiissttoorryy--sseeaarrcchh--bbaacckkwwaarrdd
              Search backward through the history for the string of characters between the start of the current line and the point.  This is a non-incremen‐
              tal search.
       hhiissttoorryy--ssuubbssttrriinngg--sseeaarrcchh--bbaacckkwwaarrdd
              Search  backward  through  the history for the string of characters between the start of the current line and the current cursor position (the
              _p_o_i_n_t).  The search string may match anywhere in a history line.  This is a non-incremental search.
       hhiissttoorryy--ssuubbssttrriinngg--sseeaarrcchh--ffoorrwwaarrdd
              Search forward through the history for the string of characters between the start of the current line and the point.  The  search  string  may
              match anywhere in a history line.  This is a non-incremental search.
       yyaannkk--nntthh--aarrgg ((MM--CC--yy))
              Insert the first argument to the previous command (usually the second word on the previous line) at point.  With an argument _n, insert the _nth
              word from the previous command (the words in the previous command begin with word 0).  A negative argument inserts the _nth word from  the  end
              of the previous command.  Once the argument _n is computed, the argument is extracted as if the "!_n" history expansion had been specified.
       yyaannkk--llaasstt--aarrgg ((MM--..,, MM--__))
              Insert  the last argument to the previous command (the last word of the previous history entry).  With a numeric argument, behave exactly like
              yyaannkk--nntthh--aarrgg.  Successive calls to yyaannkk--llaasstt--aarrgg move back through the history list, inserting the last word (or the word specified by the ar‐
              gument  to  the  first  call)  of each line in turn.  Any numeric argument supplied to these successive calls determines the direction to move
              through the history.  A negative argument switches the direction through the history (back or forward).  The history expansion facilities  are
              used to extract the last word, as if the "!$" history expansion had been specified.
       sshheellll--eexxppaanndd--lliinnee ((MM--CC--ee))
              Expand the line as the shell does.  This performs alias and history expansion as well as all of the shell word expansions.  See HHIISSTTOORRYY EEXXPPAANN‐‐
              SSIIOONN below for a description of history expansion.
       hhiissttoorryy--eexxppaanndd--lliinnee ((MM--^^))
              Perform history expansion on the current line.  See HHIISSTTOORRYY EEXXPPAANNSSIIOONN below for a description of history expansion.
       mmaaggiicc--ssppaaccee
              Perform history expansion on the current line and insert a space.  See HHIISSTTOORRYY EEXXPPAANNSSIIOONN below for a description of history expansion.
       aalliiaass--eexxppaanndd--lliinnee
              Perform alias expansion on the current line.  See AALLIIAASSEESS above for a description of alias expansion.
       hhiissttoorryy--aanndd--aalliiaass--eexxppaanndd--lliinnee
              Perform history and alias expansion on the current line.
       iinnsseerrtt--llaasstt--aarrgguummeenntt ((MM--..,, MM--__))
              A synonym for yyaannkk--llaasstt--aarrgg.
       ooppeerraattee--aanndd--ggeett--nneexxtt ((CC--oo))
              Accept the current line for execution and fetch the next line relative to the current line from the history for editing.  A numeric  argument,
              if supplied, specifies the history entry to use instead of the current line.
       eeddiitt--aanndd--eexxeeccuuttee--ccoommmmaanndd ((CC--xx CC--ee))
              Invoke  an  editor on the current command line, and execute the result as shell commands.  BBaasshh attempts to invoke $$VVIISSUUAALL, $$EEDDIITTOORR, and _e_m_a_c_s
              as the editor, in that order.

   CCoommmmaannddss ffoorr CChhaannggiinngg TTeexxtt
       _e_n_d_-_o_f_-_f_i_l_e ((uussuuaallllyy CC--dd))
              The character indicating end-of-file as set, for example, by ``stty''.  If this character is read when there are no characters  on  the  line,
              and point is at the beginning of the line, Readline interprets it as the end of input and returns EEOOFF.
       ddeelleettee--cchhaarr ((CC--dd))
              Delete  the  character  at point.  If this function is bound to the same character as the tty EEOOFF character, as CC--dd commonly is, see above for
              the effects.
       bbaacckkwwaarrdd--ddeelleettee--cchhaarr ((RRuubboouutt))
              Delete the character behind the cursor.  When given a numeric argument, save the deleted text on the kill ring.
       ffoorrwwaarrdd--bbaacckkwwaarrdd--ddeelleettee--cchhaarr
              Delete the character under the cursor, unless the cursor is at the end of the line, in which case the character behind the cursor is deleted.
       qquuootteedd--iinnsseerrtt ((CC--qq,, CC--vv))
              Add the next character typed to the line verbatim.  This is how to insert characters like CC--qq, for example.
       ttaabb--iinnsseerrtt ((CC--vv TTAABB))
              Insert a tab character.
       sseellff--iinnsseerrtt ((aa,, bb,, AA,, 11,, !!,, ......))
              Insert the character typed.
       ttrraannssppoossee--cchhaarrss ((CC--tt))
              Drag the character before point forward over the character at point, moving point forward as well.  If point is at the end of the  line,  then
              this transposes the two characters before point.  Negative arguments have no effect.
       ttrraannssppoossee--wwoorrddss ((MM--tt))
              Drag  the  word  before point past the word after point, moving point over that word as well.  If point is at the end of the line, this trans‐
              poses the last two words on the line.
       uuppccaassee--wwoorrdd ((MM--uu))
              Uppercase the current (or following) word.  With a negative argument, uppercase the previous word, but do not move point.
       ddoowwnnccaassee--wwoorrdd ((MM--ll))
              Lowercase the current (or following) word.  With a negative argument, lowercase the previous word, but do not move point.
       ccaappiittaalliizzee--wwoorrdd ((MM--cc))
              Capitalize the current (or following) word.  With a negative argument, capitalize the previous word, but do not move point.
       oovveerrwwrriittee--mmooddee
              Toggle overwrite mode.  With an explicit positive numeric argument, switches to overwrite mode.  With an explicit non-positive  numeric  argu‐
              ment,  switches  to insert mode.  This command affects only eemmaaccss mode; vvii mode does overwrite differently.  Each call to _r_e_a_d_l_i_n_e_(_) starts in
              insert mode.  In overwrite mode, characters bound to sseellff--iinnsseerrtt replace the text at point rather than pushing the text to the right.  Charac‐
              ters bound to bbaacckkwwaarrdd--ddeelleettee--cchhaarr replace the character before point with a space.  By default, this command is unbound.

   KKiilllliinngg aanndd YYaannkkiinngg
       kkiillll--lliinnee ((CC--kk))
              Kill the text from point to the end of the line.
       bbaacckkwwaarrdd--kkiillll--lliinnee ((CC--xx RRuubboouutt))
              Kill backward to the beginning of the line.
       uunniixx--lliinnee--ddiissccaarrdd ((CC--uu))
              Kill backward from point to the beginning of the line.  The killed text is saved on the kill-ring.
       kkiillll--wwhhoollee--lliinnee
              Kill all characters on the current line, no matter where point is.
       kkiillll--wwoorrdd ((MM--dd))
              Kill  from point to the end of the current word, or if between words, to the end of the next word.  Word boundaries are the same as those used
              by ffoorrwwaarrdd--wwoorrdd.
       bbaacckkwwaarrdd--kkiillll--wwoorrdd ((MM--RRuubboouutt))
              Kill the word behind point.  Word boundaries are the same as those used by bbaacckkwwaarrdd--wwoorrdd.
       sshheellll--kkiillll--wwoorrdd
              Kill from point to the end of the current word, or if between words, to the end of the next word.  Word boundaries are the same as those  used
              by sshheellll--ffoorrwwaarrdd--wwoorrdd.
       sshheellll--bbaacckkwwaarrdd--kkiillll--wwoorrdd
              Kill the word behind point.  Word boundaries are the same as those used by sshheellll--bbaacckkwwaarrdd--wwoorrdd.
       uunniixx--wwoorrdd--rruubboouutt ((CC--ww))
              Kill the word behind point, using white space as a word boundary.  The killed text is saved on the kill-ring.
       uunniixx--ffiilleennaammee--rruubboouutt
              Kill the word behind point, using white space and the slash character as the word boundaries.  The killed text is saved on the kill-ring.
       ddeelleettee--hhoorriizzoonnttaall--ssppaaccee ((MM--\\))
              Delete all spaces and tabs around point.
       kkiillll--rreeggiioonn
              Kill the text in the current region.
       ccooppyy--rreeggiioonn--aass--kkiillll
              Copy the text in the region to the kill buffer.
       ccooppyy--bbaacckkwwaarrdd--wwoorrdd
              Copy the word before point to the kill buffer.  The word boundaries are the same as bbaacckkwwaarrdd--wwoorrdd.
       ccooppyy--ffoorrwwaarrdd--wwoorrdd
              Copy the word following point to the kill buffer.  The word boundaries are the same as ffoorrwwaarrdd--wwoorrdd.
       yyaannkk ((CC--yy))
              Yank the top of the kill ring into the buffer at point.
       yyaannkk--ppoopp ((MM--yy))
              Rotate the kill ring, and yank the new top.  Only works following yyaannkk or yyaannkk--ppoopp.

   NNuummeerriicc AArrgguummeennttss
       ddiiggiitt--aarrgguummeenntt ((MM--00,, MM--11,, ......,, MM----))
              Add this digit to the argument already accumulating, or start a new argument.  M-- starts a negative argument.
       uunniivveerrssaall--aarrgguummeenntt
              This  is  another  way to specify an argument.  If this command is followed by one or more digits, optionally with a leading minus sign, those
              digits define the argument.  If the command is followed by digits, executing uunniivveerrssaall--aarrgguummeenntt again ends the numeric argument, but is other‐
              wise  ignored.  As a special case, if this command is immediately followed by a character that is neither a digit nor minus sign, the argument
              count for the next command is multiplied by four.  The argument count is initially one, so executing this function the first  time  makes  the
              argument count four, a second time makes the argument count sixteen, and so on.

   CCoommpplleettiinngg
       ccoommpplleettee ((TTAABB))
              Attempt to perform completion on the text before point.  BBaasshh attempts completion treating the text as a variable (if the text begins with $$),
              username (if the text begins with ~~), hostname (if the text begins with @@), or command (including aliases and functions) in turn.  If none  of
              these produces a match, filename completion is attempted.
       ppoossssiibbllee--ccoommpplleettiioonnss ((MM--??))
              List the possible completions of the text before point.
       iinnsseerrtt--ccoommpplleettiioonnss ((MM--**))
              Insert all completions of the text before point that would have been generated by ppoossssiibbllee--ccoommpplleettiioonnss.
       mmeennuu--ccoommpplleettee
              Similar  to  ccoommpplleettee, but replaces the word to be completed with a single match from the list of possible completions.  Repeated execution of
              mmeennuu--ccoommpplleettee steps through the list of possible completions, inserting each match in turn.  At the end of the list of completions,  the  bell
              is  rung  (subject to the setting of bbeellll--ssttyyllee) and the original text is restored.  An argument of _n moves _n positions forward in the list of
              matches; a negative argument may be used to move backward through the list.  This command is intended to be bound to TTAABB, but  is  unbound  by
              default.
       mmeennuu--ccoommpplleettee--bbaacckkwwaarrdd
              Identical  to  mmeennuu--ccoommpplleettee, but moves backward through the list of possible completions, as if mmeennuu--ccoommpplleettee had been given a negative argu‐
              ment.  This command is unbound by default.
       ddeelleettee--cchhaarr--oorr--lliisstt
              Deletes the character under the cursor if not at the beginning or end of the line (like ddeelleettee--cchhaarr).  If at the  end  of  the  line,  behaves
              identically to ppoossssiibbllee--ccoommpplleettiioonnss.  This command is unbound by default.
       ccoommpplleettee--ffiilleennaammee ((MM--//))
              Attempt filename completion on the text before point.
       ppoossssiibbllee--ffiilleennaammee--ccoommpplleettiioonnss ((CC--xx //))
              List the possible completions of the text before point, treating it as a filename.
       ccoommpplleettee--uusseerrnnaammee ((MM--~~))
              Attempt completion on the text before point, treating it as a username.
       ppoossssiibbllee--uusseerrnnaammee--ccoommpplleettiioonnss ((CC--xx ~~))
              List the possible completions of the text before point, treating it as a username.
       ccoommpplleettee--vvaarriiaabbllee ((MM--$$))
              Attempt completion on the text before point, treating it as a shell variable.
       ppoossssiibbllee--vvaarriiaabbllee--ccoommpplleettiioonnss ((CC--xx $$))
              List the possible completions of the text before point, treating it as a shell variable.
       ccoommpplleettee--hhoossttnnaammee ((MM--@@))
              Attempt completion on the text before point, treating it as a hostname.
       ppoossssiibbllee--hhoossttnnaammee--ccoommpplleettiioonnss ((CC--xx @@))
              List the possible completions of the text before point, treating it as a hostname.
       ccoommpplleettee--ccoommmmaanndd ((MM--!!))
              Attempt  completion  on  the text before point, treating it as a command name.  Command completion attempts to match the text against aliases,
              reserved words, shell functions, shell builtins, and finally executable filenames, in that order.
       ppoossssiibbllee--ccoommmmaanndd--ccoommpplleettiioonnss ((CC--xx !!))
              List the possible completions of the text before point, treating it as a command name.
       ddyynnaammiicc--ccoommpplleettee--hhiissttoorryy ((MM--TTAABB))
              Attempt completion on the text before point, comparing the text against lines from the history list for possible completion matches.
       ddaabbbbrreevv--eexxppaanndd
              Attempt menu completion on the text before point, comparing the text against lines from the history list for possible completion matches.
       ccoommpplleettee--iinnttoo--bbrraacceess ((MM--{{))
              Perform filename completion and insert the list of possible completions enclosed within braces so the list is  available  to  the  shell  (see
              BBrraaccee EExxppaannssiioonn above).

   KKeeyybbooaarrdd MMaaccrrooss
       ssttaarrtt--kkbbdd--mmaaccrroo ((CC--xx (())
              Begin saving the characters typed into the current keyboard macro.
       eenndd--kkbbdd--mmaaccrroo ((CC--xx ))))
              Stop saving the characters typed into the current keyboard macro and store the definition.
       ccaallll--llaasstt--kkbbdd--mmaaccrroo ((CC--xx ee))
              Re-execute the last keyboard macro defined, by making the characters in the macro appear as if typed at the keyboard.
       pprriinntt--llaasstt--kkbbdd--mmaaccrroo (())
              Print the last keyboard macro defined in a format suitable for the _i_n_p_u_t_r_c file.

   MMiisscceellllaanneeoouuss
       rree--rreeaadd--iinniitt--ffiillee ((CC--xx CC--rr))
              Read in the contents of the _i_n_p_u_t_r_c file, and incorporate any bindings or variable assignments found there.
       aabboorrtt ((CC--gg))
              Abort the current editing command and ring the terminal's bell (subject to the setting of bbeellll--ssttyyllee).
       ddoo--lloowweerrccaassee--vveerrssiioonn ((MM--AA,, MM--BB,, MM--_x,, ......))
              If  the  metafied  character _x is uppercase, run the command that is bound to the corresponding metafied lowercase character.  The behavior is
              undefined if _x is already lowercase.
       pprreeffiixx--mmeettaa ((EESSCC))
              Metafy the next character typed.  EESSCC ff is equivalent to MMeettaa--ff.
       uunnddoo ((CC--__,, CC--xx CC--uu))
              Incremental undo, separately remembered for each line.
       rreevveerrtt--lliinnee ((MM--rr))
              Undo all changes made to this line.  This is like executing the uunnddoo command enough times to return the line to its initial state.
       ttiillddee--eexxppaanndd ((MM--&&))
              Perform tilde expansion on the current word.
       sseett--mmaarrkk ((CC--@@,, MM--<<ssppaaccee>>))
              Set the mark to the point.  If a numeric argument is supplied, the mark is set to that position.
       eexxcchhaannggee--ppooiinntt--aanndd--mmaarrkk ((CC--xx CC--xx))
              Swap the point with the mark.  The current cursor position is set to the saved position, and the old cursor position is saved as the mark.
       cchhaarraacctteerr--sseeaarrcchh ((CC--]]))
              A character is read and point is moved to the next occurrence of that character.  A negative count searches for previous occurrences.
       cchhaarraacctteerr--sseeaarrcchh--bbaacckkwwaarrdd ((MM--CC--]]))
              A character is read and point is moved to the previous occurrence of that character.  A negative count searches for subsequent occurrences.
       sskkiipp--ccssii--sseeqquueennccee
              Read enough characters to consume a multi-key sequence such as those defined for keys like Home and End.  Such sequences begin with a  Control
              Sequence  Indicator (CSI), usually ESC-[.  If this sequence is bound to "\[", keys producing such sequences will have no effect unless explic‐
              itly bound to a readline command, instead of inserting stray characters into the editing buffer.  This is  unbound  by  default,  but  usually
              bound to ESC-[.
       iinnsseerrtt--ccoommmmeenntt ((MM--##))
              Without  a  numeric argument, the value of the readline ccoommmmeenntt--bbeeggiinn variable is inserted at the beginning of the current line.  If a numeric
              argument is supplied, this command acts as a toggle: if the characters at the beginning of the line do not match the value  of  ccoommmmeenntt--bbeeggiinn,
              the  value is inserted, otherwise the characters in ccoommmmeenntt--bbeeggiinn are deleted from the beginning of the line.  In either case, the line is ac‐
              cepted as if a newline had been typed.  The default value of ccoommmmeenntt--bbeeggiinn causes this command to make the current line a shell comment.  If a
              numeric argument causes the comment character to be removed, the line will be executed by the shell.
       gglloobb--ccoommpplleettee--wwoorrdd ((MM--gg))
              The  word before point is treated as a pattern for pathname expansion, with an asterisk implicitly appended.  This pattern is used to generate
              a list of matching filenames for possible completions.
       gglloobb--eexxppaanndd--wwoorrdd ((CC--xx **))
              The word before point is treated as a pattern for pathname expansion, and the list of matching filenames is inserted, replacing the word.   If
              a numeric argument is supplied, an asterisk is appended before pathname expansion.
       gglloobb--lliisstt--eexxppaannssiioonnss ((CC--xx gg))
              The  list  of  expansions  that would have been generated by gglloobb--eexxppaanndd--wwoorrdd is displayed, and the line is redrawn.  If a numeric argument is
              supplied, an asterisk is appended before pathname expansion.
       dduummpp--ffuunnccttiioonnss
              Print all of the functions and their key bindings to the readline output stream.  If a numeric argument is supplied, the output  is  formatted
              in such a way that it can be made part of an _i_n_p_u_t_r_c file.
       dduummpp--vvaarriiaabblleess
              Print all of the settable readline variables and their values to the readline output stream.  If a numeric argument is supplied, the output is
              formatted in such a way that it can be made part of an _i_n_p_u_t_r_c file.
       dduummpp--mmaaccrrooss
              Print all of the readline key sequences bound to macros and the strings they output.  If a numeric argument is supplied, the output is format‐
              ted in such a way that it can be made part of an _i_n_p_u_t_r_c file.
       ddiissppllaayy--sshheellll--vveerrssiioonn ((CC--xx CC--vv))
              Display version information about the current instance of bbaasshh.

   PPrrooggrraammmmaabbllee CCoommpplleettiioonn
       When  word completion is attempted for an argument to a command for which a completion specification (a _c_o_m_p_s_p_e_c) has been defined using the ccoommpplleettee
       builtin (see SSHHEELLLL BBUUIILLTTIINN CCOOMMMMAANNDDSS below), the programmable completion facilities are invoked.

       First, the command name is identified.  If the command word is the empty string (completion attempted at the beginning of an empty line),  any  comp‐
       spec  defined  with the --EE option to ccoommpplleettee is used.  If a compspec has been defined for that command, the compspec is used to generate the list of
       possible completions for the word.  If the command word is a full pathname, a compspec for the full pathname is searched for first.  If  no  compspec
       is  found for the full pathname, an attempt is made to find a compspec for the portion following the final slash.  If those searches do not result in
       a compspec, any compspec defined with the --DD option to ccoommpplleettee is used as the default.  If there is no default compspec, bbaasshh attempts alias  expan‐
       sion on the command word as a final resort, and attempts to find a compspec for the command word from any successful expansion.

       Once  a  compspec  has been found, it is used to generate the list of matching words.  If a compspec is not found, the default bbaasshh completion as de‐
       scribed above under CCoommpplleettiinngg is performed.

       First, the actions specified by the compspec are used.  Only matches which are prefixed by the word being completed are returned.  When the --ff or  --dd
       option is used for filename or directory name completion, the shell variable FFIIGGNNOORREE is used to filter the matches.

       Any completions specified by a pathname expansion pattern to the --GG option are generated next.  The words generated by the pattern need not match the
       word being completed.  The GGLLOOBBIIGGNNOORREE shell variable is not used to filter the matches, but the FFIIGGNNOORREE variable is used.

       Next, the string specified as the argument to the --WW option is considered.  The string is first split using the characters in the IIFFSS  special  vari‐
       able  as delimiters.  Shell quoting is honored.  Each word is then expanded using brace expansion, tilde expansion, parameter and variable expansion,
       command substitution, and arithmetic expansion, as described above under EEXXPPAANNSSIIOONN.  The results are split using the rules described above under WWoorrdd
       SSpplliittttiinngg.  The results of the expansion are prefix-matched against the word being completed, and the matching words become the possible completions.

       After these matches have been generated, any shell function or command specified with the --FF and --CC options is invoked.  When the command or function
       is invoked, the CCOOMMPP__LLIINNEE, CCOOMMPP__PPOOIINNTT, CCOOMMPP__KKEEYY, and CCOOMMPP__TTYYPPEE variables are assigned values as described above under SShheellll VVaarriiaabblleess.   If  a  shell
       function is being invoked, the CCOOMMPP__WWOORRDDSS and CCOOMMPP__CCWWOORRDD variables are also set.  When the function or command is invoked, the first argument ($$11) is
       the name of the command whose arguments are being completed, the second argument ($$22) is the word being completed, and the third argument ($$33) is the
       word  preceding  the word being completed on the current command line.  No filtering of the generated completions against the word being completed is
       performed; the function or command has complete freedom in generating the matches.

       Any function specified with --FF is invoked first.  The function may use any of the shell facilities, including the ccoommppggeenn builtin described below, to
       generate the matches.  It must put the possible completions in the CCOOMMPPRREEPPLLYY array variable, one per array element.

       Next,  any  command  specified with the --CC option is invoked in an environment equivalent to command substitution.  It should print a list of comple‐
       tions, one per line, to the standard output.  Backslash may be used to escape a newline, if necessary.

       After all of the possible completions are generated, any filter specified with the --XX option is applied to the list.  The filter is a pattern as used
       for  pathname  expansion; a && in the pattern is replaced with the text of the word being completed.  A literal && may be escaped with a backslash; the
       backslash is removed before attempting a match.  Any completion that matches the pattern will be removed from the list.  A leading !! negates the pat‐
       tern; in this case any completion not matching the pattern will be removed.  If the nnooccaasseemmaattcchh shell option is enabled, the match is performed with‐
       out regard to the case of alphabetic characters.

       Finally, any prefix and suffix specified with the --PP and --SS options are added to each member of the completion list, and the result  is  returned  to
       the readline completion code as the list of possible completions.

       If the previously-applied actions do not generate any matches, and the --oo ddiirrnnaammeess option was supplied to ccoommpplleettee when the compspec was defined, di‐
       rectory name completion is attempted.

       If the --oo pplluussddiirrss option was supplied to ccoommpplleettee when the compspec was defined, directory name completion is attempted and any matches are added to
       the results of the other actions.

       By  default,  if  a compspec is found, whatever it generates is returned to the completion code as the full set of possible completions.  The default
       bbaasshh completions are not attempted, and the readline default of filename completion is disabled.  If the --oo bbaasshhddeeffaauulltt option was supplied  to  ccoomm‐‐
       pplleettee  when  the compspec was defined, the bbaasshh default completions are attempted if the compspec generates no matches.  If the --oo ddeeffaauulltt option was
       supplied to ccoommpplleettee when the compspec was defined, readline's default completion will be performed if the compspec (and, if attempted,  the  default
       bbaasshh completions) generate no matches.

       When  a  compspec indicates that directory name completion is desired, the programmable completion functions force readline to append a slash to com‐
       pleted names which are symbolic links to directories, subject to the value of the mmaarrkk--ddiirreeccttoorriieess readline variable, regardless of  the  setting  of
       the mmaarrkk--ssyymmlliinnkkeedd--ddiirreeccttoorriieess readline variable.

       There  is  some support for dynamically modifying completions.  This is most useful when used in combination with a default completion specified with
       ccoommpplleettee --DD.  It's possible for shell functions executed as completion handlers to indicate that completion should be retried by  returning  an  exit
       status  of  124.   If a shell function returns 124, and changes the compspec associated with the command on which completion is being attempted (sup‐
       plied as the first argument when the function is executed), programmable completion restarts from the beginning, with an attempt to find a new  comp‐
       spec for that command.  This allows a set of completions to be built dynamically as completion is attempted, rather than being loaded all at once.

       For instance, assuming that there is a library of compspecs, each kept in a file corresponding to the name of the command, the following default com‐
       pletion function would load completions dynamically:

       _completion_loader()
       {
            . "/etc/bash_completion.d/$1.sh" >/dev/null 2>&1 && return 124
       }
       complete -D -F _completion_loader -o bashdefault -o default

HHIISSTTOORRYY
       When the --oo hhiissttoorryy option to the sseett builtin is enabled, the shell provides access to the _c_o_m_m_a_n_d _h_i_s_t_o_r_y, the list of  commands  previously  typed.
       The value of the HHIISSTTSSIIZZEE variable is used as the number of commands to save in a history list.  The text of the last HHIISSTTSSIIZZEE commands (default 500)
       is saved.  The shell stores each command in the history list prior to parameter and variable expansion (see EEXXPPAANNSSIIOONN above) but after history expan‐
       sion is performed, subject to the values of the shell variables HHIISSTTIIGGNNOORREE and HHIISSTTCCOONNTTRROOLL.

       On  startup, the history is initialized from the file named by the variable HHIISSTTFFIILLEE (default _~_/_._b_a_s_h___h_i_s_t_o_r_y).  The file named by the value of HHIISSTT‐‐
       FFIILLEE is truncated, if necessary, to contain no more than the number of lines specified by the value of HHIISSTTFFIILLEESSIIZZEE.  If HHIISSTTFFIILLEESSIIZZEE  is  unset,  or
       set  to null, a non-numeric value, or a numeric value less than zero, the history file is not truncated.  When the history file is read, lines begin‐
       ning with the history comment character followed immediately by a digit are interpreted as timestamps for the following history  line.   These  time‐
       stamps  are  optionally displayed depending on the value of the HHIISSTTTTIIMMEEFFOORRMMAATT variable.  When a shell with history enabled exits, the last $$HHIISSTTSSIIZZEE
       lines are copied from the history list to $$HHIISSTTFFIILLEE.  If the hhiissttaappppeenndd shell option is enabled (see the description of  sshhoopptt  under  SSHHEELLLL  BBUUIILLTTIINN
       CCOOMMMMAANNDDSS below), the lines are appended to the history file, otherwise the history file is overwritten.  If HHIISSTTFFIILLEE is unset, or if the history file
       is unwritable, the history is not saved.  If the HHIISSTTTTIIMMEEFFOORRMMAATT variable is set, time stamps are written to the history file, marked with the history
       comment character, so they may be preserved across shell sessions.  This uses the history comment character to distinguish timestamps from other his‐
       tory lines.  After saving the history, the history file is truncated to contain no more than HHIISSTTFFIILLEESSIIZZEE lines.  If HHIISSTTFFIILLEESSIIZZEE is unset, or set to
       null, a non-numeric value, or a numeric value less than zero, the history file is not truncated.

       The  builtin  command  ffcc  (see  SSHHEELLLL BBUUIILLTTIINN CCOOMMMMAANNDDSS below) may be used to list or edit and re-execute a portion of the history list.  The hhiissttoorryy
       builtin may be used to display or modify the history list and manipulate the history file.  When using  command-line  editing,  search  commands  are
       available in each editing mode that provide access to the history list.

       The  shell  allows control over which commands are saved on the history list.  The HHIISSTTCCOONNTTRROOLL and HHIISSTTIIGGNNOORREE variables may be set to cause the shell
       to save only a subset of the commands entered.  The ccmmddhhiisstt shell option, if enabled, causes the shell to attempt to save each line of  a  multi-line
       command in the same history entry, adding semicolons where necessary to preserve syntactic correctness.  The lliitthhiisstt shell option causes the shell to
       save the command with embedded newlines instead of semicolons.  See the description of the sshhoopptt builtin below under SSHHEELLLL BBUUIILLTTIINN CCOOMMMMAANNDDSS  for  in‐
       formation on setting and unsetting shell options.

HHIISSTTOORRYY EEXXPPAANNSSIIOONN
       The  shell  supports  a  history  expansion feature that is similar to the history expansion in ccsshh.  This section describes what syntax features are
       available.  This feature is enabled by default for interactive shells, and can be disabled using the ++HH option to the sseett builtin command (see  SSHHEELLLL
       BBUUIILLTTIINN CCOOMMMMAANNDDSS below).  Non-interactive shells do not perform history expansion by default.

       History expansions introduce words from the history list into the input stream, making it easy to repeat commands, insert the arguments to a previous
       command into the current input line, or fix errors in previous commands quickly.

       History expansion is performed immediately after a complete line is read, before the shell breaks it into words, and is performed on each line  indi‐
       vidually  without taking quoting on previous lines into account.  It takes place in two parts.  The first is to determine which line from the history
       list to use during substitution.  The second is to select portions of that line for inclusion into the current one.  The line selected from the  his‐
       tory  is  the  _e_v_e_n_t, and the portions of that line that are acted upon are _w_o_r_d_s.  Various _m_o_d_i_f_i_e_r_s are available to manipulate the selected words.
       The line is broken into words in the same fashion as when reading input, so that several _m_e_t_a_c_h_a_r_a_c_t_e_r-separated words surrounded by quotes are  con‐
       sidered one word.  History expansions are introduced by the appearance of the history expansion character, which is !! by default.  Only backslash (\\)
       and single quotes can quote the history expansion character, but the history expansion character is also treated as quoted if it immediately precedes
       the closing double quote in a double-quoted string.

       Several characters inhibit history expansion if found immediately following the history expansion character, even if it is unquoted: space, tab, new‐
       line, carriage return, and ==.  If the eexxttgglloobb shell option is enabled, (( will also inhibit expansion.

       Several shell options settable with the sshhoopptt builtin may be used to tailor the behavior of history expansion.  If the hhiissttvveerriiffyy shell option is en‐
       abled  (see  the  description  of the sshhoopptt builtin below), and rreeaaddlliinnee is being used, history substitutions are not immediately passed to the shell
       parser.  Instead, the expanded line is reloaded into the rreeaaddlliinnee editing buffer for further modification.   If  rreeaaddlliinnee  is  being  used,  and  the
       hhiissttrreeeeddiitt shell option is enabled, a failed history substitution will be reloaded into the rreeaaddlliinnee editing buffer for correction.  The --pp option to
       the hhiissttoorryy builtin command may be used to see what a history expansion will do before using it.  The --ss option to the hhiissttoorryy builtin may be used to
       add commands to the end of the history list without actually executing them, so that they are available for subsequent recall.

       The  shell allows control of the various characters used by the history expansion mechanism (see the description of hhiissttcchhaarrss above under SShheellll VVaarrii‐‐
       aabblleess).  The shell uses the history comment character to mark history timestamps when writing the history file.

   EEvveenntt DDeessiiggnnaattoorrss
       An event designator is a reference to a command line entry in the history list.  Unless the reference is absolute, events are relative to the current
       position in the history list.

       !!      Start  a history substitution, except when followed by a bbllaannkk, newline, carriage return, = or ( (when the eexxttgglloobb shell option is enabled us‐
              ing the sshhoopptt builtin).
       !!_n     Refer to command line _n.
       !!--_n    Refer to the current command minus _n.
       !!!!     Refer to the previous command.  This is a synonym for `!-1'.
       !!_s_t_r_i_n_g
              Refer to the most recent command preceding the current position in the history list starting with _s_t_r_i_n_g.
       !!??_s_t_r_i_n_g[[??]]
              Refer to the most recent command preceding the current position in the history list containing _s_t_r_i_n_g.  The  trailing  ??  may  be  omitted  if
              _s_t_r_i_n_g is followed immediately by a newline.  If _s_t_r_i_n_g is missing, the string from the most recent search is used; it is an error if there is
              no previous search string.
       ^^_s_t_r_i_n_g_1^^_s_t_r_i_n_g_2^^
              Quick substitution.  Repeat the previous command, replacing _s_t_r_i_n_g_1 with _s_t_r_i_n_g_2.  Equivalent to ``!!:s^_s_t_r_i_n_g_1^_s_t_r_i_n_g_2^'' (see MMooddiiffiieerrss  be‐
              low).
       !!##     The entire command line typed so far.

   WWoorrdd DDeessiiggnnaattoorrss
       Word designators are used to select desired words from the event.  A :: separates the event specification from the word designator.  It may be omitted
       if the word designator begins with a ^^, $$, **, --, or %%.  Words are numbered from the beginning of the line, with the first word  being  denoted  by  0
       (zero).  Words are inserted into the current line separated by single spaces.

       00 ((zzeerroo))
              The zeroth word.  For the shell, this is the command word.
       _n      The _nth word.
       ^^      The first argument.  That is, word 1.
       $$      The last word.  This is usually the last argument, but will expand to the zeroth word if there is only one word in the line.
       %%      The first word matched by the most recent `?_s_t_r_i_n_g?' search, if the search string begins with a character that is part of a word.
       _x--_y    A range of words; `-_y' abbreviates `0-_y'.
       **      All  of the words but the zeroth.  This is a synonym for `_1_-_$'.  It is not an error to use ** if there is just one word in the event; the empty
              string is returned in that case.
       xx**     Abbreviates _x_-_$.
       xx--     Abbreviates _x_-_$ like xx**, but omits the last word.  If xx is missing, it defaults to 0.

       If a word designator is supplied without an event specification, the previous command is used as the event.

   MMooddiiffiieerrss
       After the optional word designator, there may appear a sequence of one or more of the following modifiers, each preceded by a `:'.  These modify,  or
       edit, the word or words selected from the history event.

       hh      Remove a trailing filename component, leaving only the head.
       tt      Remove all leading filename components, leaving the tail.
       rr      Remove a trailing suffix of the form _._x_x_x, leaving the basename.
       ee      Remove all but the trailing suffix.
       pp      Print the new command but do not execute it.
       qq      Quote the substituted words, escaping further substitutions.
       xx      Quote  the  substituted  words as with qq, but break into words at bbllaannkkss and newlines.  The qq and xx modifiers are mutually exclusive; the last
              one supplied is used.
       ss//_o_l_d//_n_e_w//
              Substitute _n_e_w for the first occurrence of _o_l_d in the event line.  Any character may be used as the delimiter in place of /.  The final delim‐
              iter is optional if it is the last character of the event line.  The delimiter may be quoted in _o_l_d and _n_e_w with a single backslash.  If & ap‐
              pears in _n_e_w, it is replaced by _o_l_d.  A single backslash will quote the &.  If _o_l_d is null, it is set to the last _o_l_d substituted, or,  if  no
              previous history substitutions took place, the last _s_t_r_i_n_g in a !!??_s_t_r_i_n_g[[??]]  search.  If _n_e_w is null, each matching _o_l_d is deleted.
       &&      Repeat the previous substitution.
       gg      Cause  changes  to be applied over the entire event line.  This is used in conjunction with `::ss' (e.g., `::ggss//_o_l_d//_n_e_w//') or `::&&'.  If used with
              `::ss', any delimiter can be used in place of /, and the final delimiter is optional if it is the last character of the event line.  An aa may be
              used as a synonym for gg.
       GG      Apply the following `ss' or `&&' modifier once to each word in the event line.

SSHHEELLLL BBUUIILLTTIINN CCOOMMMMAANNDDSS
       Unless  otherwise  noted, each builtin command documented in this section as accepting options preceded by -- accepts ---- to signify the end of the op‐
       tions.  The ::, ttrruuee, ffaallssee, and tteesstt/[[ builtins do not accept options and do not treat ---- specially.  The eexxiitt, llooggoouutt, rreettuurrnn, bbrreeaakk, ccoonnttiinnuuee, lleett,
       and sshhiifftt builtins accept and process arguments beginning with -- without requiring ----.  Other builtins that accept arguments but are not specified as
       accepting options interpret arguments beginning with -- as invalid options and require ---- to prevent this interpretation.
       :: [_a_r_g_u_m_e_n_t_s]
              No effect; the command does nothing beyond expanding _a_r_g_u_m_e_n_t_s and performing any specified redirections.  The return status is zero.

        ..  _f_i_l_e_n_a_m_e [_a_r_g_u_m_e_n_t_s]
       ssoouurrccee _f_i_l_e_n_a_m_e [_a_r_g_u_m_e_n_t_s]
              Read and execute commands from _f_i_l_e_n_a_m_e in the current shell environment and return the exit status of the last command  executed  from  _f_i_l_e_‐
              _n_a_m_e.   If  _f_i_l_e_n_a_m_e does not contain a slash, filenames in PPAATTHH are used to find the directory containing _f_i_l_e_n_a_m_e.  The file searched for in
              PPAATTHH need not be executable.  When bbaasshh is not in _p_o_s_i_x _m_o_d_e, the current directory is searched if no file is found in  PPAATTHH.   If  the  ssoouurr‐‐
              cceeppaatthh option to the sshhoopptt builtin command is turned off, the PPAATTHH is not searched.  If any _a_r_g_u_m_e_n_t_s are supplied, they become the positional
              parameters when _f_i_l_e_n_a_m_e is executed.  Otherwise the positional parameters are unchanged.  If the --TT option is enabled,  ssoouurrccee  inherits  any
              trap  on DDEEBBUUGG; if it is not, any DDEEBBUUGG trap string is saved and restored around the call to ssoouurrccee, and ssoouurrccee unsets the DDEEBBUUGG trap while it
              executes.  If --TT is not set, and the sourced file changes the DDEEBBUUGG trap, the new value is retained when ssoouurrccee completes.  The return  status
              is  the  status  of the last command exited within the script (0 if no commands are executed), and false if _f_i_l_e_n_a_m_e is not found or cannot be
              read.

       aalliiaass [--pp] [_n_a_m_e[=_v_a_l_u_e] ...]
              AAlliiaass with no arguments or with the --pp option prints the list of aliases in the form aalliiaass _n_a_m_e=_v_a_l_u_e on standard output.  When arguments  are
              supplied, an alias is defined for each _n_a_m_e whose _v_a_l_u_e is given.  A trailing space in _v_a_l_u_e causes the next word to be checked for alias sub‐
              stitution when the alias is expanded.  For each _n_a_m_e in the argument list for which no _v_a_l_u_e is supplied, the name and value of the  alias  is
              printed.  AAlliiaass returns true unless a _n_a_m_e is given for which no alias has been defined.

       bbgg [_j_o_b_s_p_e_c ...]
              Resume  each  suspended job _j_o_b_s_p_e_c in the background, as if it had been started with &&.  If _j_o_b_s_p_e_c is not present, the shell's notion of the
              _c_u_r_r_e_n_t _j_o_b is used.  bbgg _j_o_b_s_p_e_c returns 0 unless run when job control is disabled or, when run with job control enabled, any  specified  _j_o_b_‐
              _s_p_e_c was not found or was started without job control.

       bbiinndd [--mm _k_e_y_m_a_p] [--llppssvvPPSSVVXX]
       bbiinndd [--mm _k_e_y_m_a_p] [--qq _f_u_n_c_t_i_o_n] [--uu _f_u_n_c_t_i_o_n] [--rr _k_e_y_s_e_q]
       bbiinndd [--mm _k_e_y_m_a_p] --ff _f_i_l_e_n_a_m_e
       bbiinndd [--mm _k_e_y_m_a_p] --xx _k_e_y_s_e_q:_s_h_e_l_l_-_c_o_m_m_a_n_d
       bbiinndd [--mm _k_e_y_m_a_p] _k_e_y_s_e_q:_f_u_n_c_t_i_o_n_-_n_a_m_e
       bbiinndd [--mm _k_e_y_m_a_p] _k_e_y_s_e_q:_r_e_a_d_l_i_n_e_-_c_o_m_m_a_n_d
              Display  current  rreeaaddlliinnee  key  and function bindings, bind a key sequence to a rreeaaddlliinnee function or macro, or set a rreeaaddlliinnee variable.  Each
              non-option argument is a command as it would appear in _._i_n_p_u_t_r_c, but each binding or command must be passed  as  a  separate  argument;  e.g.,
              '"\C-x\C-r": re-read-init-file'.  Options, if supplied, have the following meanings:
              --mm _k_e_y_m_a_p
                     Use  _k_e_y_m_a_p  as  the  keymap to be affected by the subsequent bindings.  Acceptable _k_e_y_m_a_p names are _e_m_a_c_s_, _e_m_a_c_s_-_s_t_a_n_d_a_r_d_, _e_m_a_c_s_-_m_e_t_a_,
                     _e_m_a_c_s_-_c_t_l_x_, _v_i_, _v_i_-_m_o_v_e_, _v_i_-_c_o_m_m_a_n_d, and _v_i_-_i_n_s_e_r_t.  _v_i is equivalent to _v_i_-_c_o_m_m_a_n_d (_v_i_-_m_o_v_e is also a synonym); _e_m_a_c_s is equivalent to
                     _e_m_a_c_s_-_s_t_a_n_d_a_r_d.
              --ll     List the names of all rreeaaddlliinnee functions.
              --pp     Display rreeaaddlliinnee function names and bindings in such a way that they can be re-read.
              --PP     List current rreeaaddlliinnee function names and bindings.
              --ss     Display rreeaaddlliinnee key sequences bound to macros and the strings they output in such a way that they can be re-read.
              --SS     Display rreeaaddlliinnee key sequences bound to macros and the strings they output.
              --vv     Display rreeaaddlliinnee variable names and values in such a way that they can be re-read.
              --VV     List current rreeaaddlliinnee variable names and values.
              --ff _f_i_l_e_n_a_m_e
                     Read key bindings from _f_i_l_e_n_a_m_e.
              --qq _f_u_n_c_t_i_o_n
                     Query about which keys invoke the named _f_u_n_c_t_i_o_n.
              --uu _f_u_n_c_t_i_o_n
                     Unbind all keys bound to the named _f_u_n_c_t_i_o_n.
              --rr _k_e_y_s_e_q
                     Remove any current binding for _k_e_y_s_e_q.
              --xx _k_e_y_s_e_q::_s_h_e_l_l_-_c_o_m_m_a_n_d
                     Cause  _s_h_e_l_l_-_c_o_m_m_a_n_d to be executed whenever _k_e_y_s_e_q is entered.  When _s_h_e_l_l_-_c_o_m_m_a_n_d is executed, the shell sets the RREEAADDLLIINNEE__LLIINNEE vari‐
                     able to the contents of the rreeaaddlliinnee line buffer and the RREEAADDLLIINNEE__PPOOIINNTT and RREEAADDLLIINNEE__MMAARRKK variables to the current location of the  in‐
                     sertion  point  and  the  saved  insertion  point  (the mark), respectively.  If the executed command changes the value of any of RREEAADD‐‐
                     LLIINNEE__LLIINNEE, RREEAADDLLIINNEE__PPOOIINNTT, or RREEAADDLLIINNEE__MMAARRKK, those new values will be reflected in the editing state.
              --XX     List all key sequences bound to shell commands and the associated commands in a format that can be reused as input.

              The return value is 0 unless an unrecognized option is given or an error occurred.

       bbrreeaakk [_n]
              Exit from within a ffoorr, wwhhiillee, uunnttiill, or sseelleecctt loop.  If _n is specified, break _n levels.  _n must be ≥ 1.  If _n is greater than the number  of
              enclosing loops, all enclosing loops are exited.  The return value is 0 unless _n is not greater than or equal to 1.

       bbuuiillttiinn _s_h_e_l_l_-_b_u_i_l_t_i_n [_a_r_g_u_m_e_n_t_s]
              Execute  the specified shell builtin, passing it _a_r_g_u_m_e_n_t_s, and return its exit status.  This is useful when defining a function whose name is
              the same as a shell builtin, retaining the functionality of the builtin within the function.  The ccdd builtin is commonly redefined  this  way.
              The return status is false if _s_h_e_l_l_-_b_u_i_l_t_i_n is not a shell builtin command.

       ccaalllleerr [_e_x_p_r]
              Returns the context of any active subroutine call (a shell function or a script executed with the .. or ssoouurrccee builtins).  Without _e_x_p_r, ccaalllleerr
              displays the line number and source filename of the current subroutine call.  If a non-negative integer is supplied as _e_x_p_r,  ccaalllleerr  displays
              the  line number, subroutine name, and source file corresponding to that position in the current execution call stack.  This extra information
              may be used, for example, to print a stack trace.  The current frame is frame 0.  The return value is 0 unless the shell is  not  executing  a
              subroutine call or _e_x_p_r does not correspond to a valid position in the call stack.

       ccdd [--LL|[--PP [--ee]] [-@]] [_d_i_r]
              Change  the  current directory to _d_i_r.  if _d_i_r is not supplied, the value of the HHOOMMEE shell variable is the default.  Any additional arguments
              following _d_i_r are ignored.  The variable CCDDPPAATTHH defines the search path for the directory containing _d_i_r: each directory  name  in  CCDDPPAATTHH  is
              searched  for  _d_i_r.   Alternative  directory names in CCDDPPAATTHH are separated by a colon (:).  A null directory name in CCDDPPAATTHH is the same as the
              current directory, i.e., ``..''.  If _d_i_r begins with a slash (/), then CCDDPPAATTHH is not used.  The --PP option causes ccdd to use the physical  direc‐
              tory  structure  by  resolving symbolic links while traversing _d_i_r and before processing instances of _._. in _d_i_r (see also the --PP option to the
              sseett builtin command); the --LL option forces symbolic links to be followed by resolving the link after processing instances of _._. in _d_i_r.  If _._.
              appears in _d_i_r, it is processed by removing the immediately previous pathname component from _d_i_r, back to a slash or the beginning of _d_i_r.  If
              the --ee option is supplied with --PP, and the current working directory cannot be successfully determined after a successful directory change, ccdd
              will  return  an  unsuccessful status.  On systems that support it, the --@@ option presents the extended attributes associated with a file as a
              directory.  An argument of -- is converted to $$OOLLDDPPWWDD before the directory change is attempted.  If a non-empty directory name from  CCDDPPAATTHH  is
              used,  or if -- is the first argument, and the directory change is successful, the absolute pathname of the new working directory is written to
              the standard output.  The return value is true if the directory was successfully changed; false otherwise.

       ccoommmmaanndd [--ppVVvv] _c_o_m_m_a_n_d [_a_r_g ...]
              Run _c_o_m_m_a_n_d with _a_r_g_s suppressing the normal shell function lookup.  Only builtin commands or commands found in the PPAATTHH are executed.  If the
              --pp  option  is given, the search for _c_o_m_m_a_n_d is performed using a default value for PPAATTHH that is guaranteed to find all of the standard utili‐
              ties.  If either the --VV or --vv option is supplied, a description of _c_o_m_m_a_n_d is printed.  The --vv option causes a single word indicating the com‐
              mand  or  filename  used to invoke _c_o_m_m_a_n_d to be displayed; the --VV option produces a more verbose description.  If the --VV or --vv option is sup‐
              plied, the exit status is 0 if _c_o_m_m_a_n_d was found, and 1 if not.  If neither option is supplied and an error  occurred  or  _c_o_m_m_a_n_d  cannot  be
              found, the exit status is 127.  Otherwise, the exit status of the ccoommmmaanndd builtin is the exit status of _c_o_m_m_a_n_d.

       ccoommppggeenn [_o_p_t_i_o_n] [_w_o_r_d]
              Generate  possible completion matches for _w_o_r_d according to the _o_p_t_i_o_ns, which may be any option accepted by the ccoommpplleettee builtin with the ex‐
              ception of --pp and --rr, and write the matches to the standard output.  When using the --FF or --CC options, the various shell variables set  by  the
              programmable completion facilities, while available, will not have useful values.

              The  matches will be generated in the same way as if the programmable completion code had generated them directly from a completion specifica‐
              tion with the same flags.  If _w_o_r_d is specified, only those completions matching _w_o_r_d will be displayed.

              The return value is true unless an invalid option is supplied, or no matches were generated.

       ccoommpplleettee [--aabbccddeeffggjjkkssuuvv] [--oo _c_o_m_p_-_o_p_t_i_o_n] [--DDEEII] [--AA _a_c_t_i_o_n] [--GG _g_l_o_b_p_a_t] [--WW _w_o_r_d_l_i_s_t]
              [--FF _f_u_n_c_t_i_o_n] [--CC _c_o_m_m_a_n_d] [--XX _f_i_l_t_e_r_p_a_t] [--PP _p_r_e_f_i_x] [--SS _s_u_f_f_i_x] _n_a_m_e [_n_a_m_e _._._.]
       ccoommpplleettee --pprr [--DDEEII] [_n_a_m_e ...]
              Specify how arguments to each _n_a_m_e should be completed.  If the --pp option is supplied, or if no  options  are  supplied,  existing  completion
              specifications  are  printed in a way that allows them to be reused as input.  The --rr option removes a completion specification for each _n_a_m_e,
              or, if no _n_a_m_es are supplied, all completion specifications.  The --DD option indicates that other supplied options and actions should apply  to
              the  ``default''  command  completion; that is, completion attempted on a command for which no completion has previously been defined.  The --EE
              option indicates that other supplied options and actions should apply to ``empty'' command completion; that  is,  completion  attempted  on  a
              blank  line.  The --II option indicates that other supplied options and actions should apply to completion on the initial non-assignment word on
              the line, or after a command delimiter such as ;; or ||, which is usually command name completion.  If multiple options are supplied, the --DD op‐
              tion  takes precedence over --EE, and both take precedence over --II.  If any of --DD, --EE, or --II are supplied, any other _n_a_m_e arguments are ignored;
              these completions only apply to the case specified by the option.

              The process of applying these completion specifications when word completion is attempted is described above under PPrrooggrraammmmaabbllee CCoommpplleettiioonn.

              Other options, if specified, have the following meanings.  The arguments to the --GG, --WW, and --XX options (and, if necessary, the --PP and  --SS  op‐
              tions) should be quoted to protect them from expansion before the ccoommpplleettee builtin is invoked.
              --oo _c_o_m_p_-_o_p_t_i_o_n
                      The  _c_o_m_p_-_o_p_t_i_o_n  controls several aspects of the compspec's behavior beyond the simple generation of completions.  _c_o_m_p_-_o_p_t_i_o_n may be
                      one of:
                      bbaasshhddeeffaauulltt
                              Perform the rest of the default bbaasshh completions if the compspec generates no matches.
                      ddeeffaauulltt Use readline's default filename completion if the compspec generates no matches.
                      ddiirrnnaammeess
                              Perform directory name completion if the compspec generates no matches.
                      ffiilleennaammeess
                              Tell readline that the compspec generates filenames, so it can perform any filename-specific processing (like adding  a  slash
                              to directory names, quoting special characters, or suppressing trailing spaces).  Intended to be used with shell functions.
                      nnooqquuoottee Tell readline not to quote the completed words if they are filenames (quoting filenames is the default).
                      nnoossoorrtt  Tell readline not to sort the list of possible completions alphabetically.
                      nnoossppaaccee Tell readline not to append a space (the default) to words completed at the end of the line.
                      pplluussddiirrss
                              After  any  matches defined by the compspec are generated, directory name completion is attempted and any matches are added to
                              the results of the other actions.
              --AA _a_c_t_i_o_n
                      The _a_c_t_i_o_n may be one of the following to generate a list of possible completions:
                      aalliiaass   Alias names.  May also be specified as --aa.
                      aarrrraayyvvaarr
                              Array variable names.
                      bbiinnddiinngg RReeaaddlliinnee key binding names.
                      bbuuiillttiinn Names of shell builtin commands.  May also be specified as --bb.
                      ccoommmmaanndd Command names.  May also be specified as --cc.
                      ddiirreeccttoorryy
                              Directory names.  May also be specified as --dd.
                      ddiissaabblleedd
                              Names of disabled shell builtins.
                      eennaabblleedd Names of enabled shell builtins.
                      eexxppoorrtt  Names of exported shell variables.  May also be specified as --ee.
                      ffiillee    File names.  May also be specified as --ff.
                      ffuunnccttiioonn
                              Names of shell functions.
                      ggrroouupp   Group names.  May also be specified as --gg.
                      hheellppttooppiicc
                              Help topics as accepted by the hheellpp builtin.
                      hhoossttnnaammee
                              Hostnames, as taken from the file specified by the HHOOSSTTFFIILLEE shell variable.
                      jjoobb     Job names, if job control is active.  May also be specified as --jj.
                      kkeeyywwoorrdd Shell reserved words.  May also be specified as --kk.
                      rruunnnniinngg Names of running jobs, if job control is active.
                      sseerrvviiccee Service names.  May also be specified as --ss.
                      sseettoopptt  Valid arguments for the --oo option to the sseett builtin.
                      sshhoopptt   Shell option names as accepted by the sshhoopptt builtin.
                      ssiiggnnaall  Signal names.
                      ssttooppppeedd Names of stopped jobs, if job control is active.
                      uusseerr    User names.  May also be specified as --uu.
                      vvaarriiaabbllee
                              Names of all shell variables.  May also be specified as --vv.
              --CC _c_o_m_m_a_n_d
                      _c_o_m_m_a_n_d is executed in a subshell environment, and its output is used as the possible completions.
              --FF _f_u_n_c_t_i_o_n
                      The shell function _f_u_n_c_t_i_o_n is executed in the current shell environment.  When the function is executed, the first argument  ($$11)  is
                      the name of the command whose arguments are being completed, the second argument ($$22) is the word being completed, and the third argu‐
                      ment ($$33) is the word preceding the word being completed on the current command line.  When it finishes, the possible completions  are
                      retrieved from the value of the CCOOMMPPRREEPPLLYY array variable.
              --GG _g_l_o_b_p_a_t
                      The pathname expansion pattern _g_l_o_b_p_a_t is expanded to generate the possible completions.
              --PP _p_r_e_f_i_x
                      _p_r_e_f_i_x is added at the beginning of each possible completion after all other options have been applied.
              --SS _s_u_f_f_i_x
                      _s_u_f_f_i_x is appended to each possible completion after all other options have been applied.
              --WW _w_o_r_d_l_i_s_t
                      The  _w_o_r_d_l_i_s_t  is  split  using  the characters in the IIFFSS special variable as delimiters, and each resultant word is expanded.  Shell
                      quoting is honored within _w_o_r_d_l_i_s_t, in order to provide a mechanism for the words to contain shell metacharacters or characters in the
                      value of IIFFSS.  The possible completions are the members of the resultant list which match the word being completed.
              --XX _f_i_l_t_e_r_p_a_t
                      _f_i_l_t_e_r_p_a_t  is  a pattern as used for pathname expansion.  It is applied to the list of possible completions generated by the preceding
                      options and arguments, and each completion matching _f_i_l_t_e_r_p_a_t is removed from the list.  A leading !! in _f_i_l_t_e_r_p_a_t negates the pattern;
                      in this case, any completion not matching _f_i_l_t_e_r_p_a_t is removed.

              The  return  value is true unless an invalid option is supplied, an option other than --pp or --rr is supplied without a _n_a_m_e argument, an attempt
              is made to remove a completion specification for a _n_a_m_e for which no specification exists, or an error occurs adding a  completion  specifica‐
              tion.

       ccoommppoopptt [--oo _o_p_t_i_o_n] [--DDEEII] [++oo _o_p_t_i_o_n] [_n_a_m_e]
              Modify  completion  options for each _n_a_m_e according to the _o_p_t_i_o_ns, or for the currently-executing completion if no _n_a_m_es are supplied.  If no
              _o_p_t_i_o_ns are given, display the completion options for each _n_a_m_e or the current completion.  The possible values of _o_p_t_i_o_n are those valid  for
              the ccoommpplleettee builtin described above.  The --DD option indicates that other supplied options should apply to the ``default'' command completion;
              that is, completion attempted on a command for which no completion has previously been defined.  The --EE option indicates that  other  supplied
              options  should apply to ``empty'' command completion; that is, completion attempted on a blank line.  The --II option indicates that other sup‐
              plied options should apply to completion on the initial non-assignment word on the line, or after a command delimiter such as ;; or ||, which is
              usually command name completion.

              The  return  value  is  true unless an invalid option is supplied, an attempt is made to modify the options for a _n_a_m_e for which no completion
              specification exists, or an output error occurs.

       ccoonnttiinnuuee [_n]
              Resume the next iteration of the enclosing ffoorr, wwhhiillee, uunnttiill, or sseelleecctt loop.  If _n is specified, resume at the _nth enclosing loop.  _n must be
              ≥  1.  If _n is greater than the number of enclosing loops, the last enclosing loop (the ``top-level'' loop) is resumed.  The return value is 0
              unless _n is not greater than or equal to 1.

       ddeeccllaarree [--aaAAffFFggiiIIllnnrrttuuxx] [--pp] [_n_a_m_e[=_v_a_l_u_e] ...]
       ttyyppeesseett [--aaAAffFFggiiIIllnnrrttuuxx] [--pp] [_n_a_m_e[=_v_a_l_u_e] ...]
              Declare variables and/or give them attributes.  If no _n_a_m_es are given then display the values of variables.  The --pp option  will  display  the
              attributes  and  values of each _n_a_m_e.  When --pp is used with _n_a_m_e arguments, additional options, other than --ff and --FF, are ignored.  When --pp is
              supplied without _n_a_m_e arguments, it will display the attributes and values of all variables having the attributes specified by the  additional
              options.  If no other options are supplied with --pp, ddeeccllaarree will display the attributes and values of all shell variables.  The --ff option will
              restrict the display to shell functions.  The --FF option inhibits the display of function definitions; only the function  name  and  attributes
              are  printed.   If  the eexxttddeebbuugg shell option is enabled using sshhoopptt, the source file name and line number where each _n_a_m_e is defined are dis‐
              played as well.  The --FF option implies --ff.  The --gg option forces variables to be created or modified at the global scope, even when ddeeccllaarree is
              executed  in  a shell function.  It is ignored in all other cases.  The --II option causes local variables to inherit the attributes (except the
              _n_a_m_e_r_e_f attribute) and value of any existing variable with the same _n_a_m_e at a surrounding scope.  If there is no existing variable, the  local
              variable  is initially unset.  The following options can be used to restrict output to variables with the specified attribute or to give vari‐
              ables attributes:
              --aa     Each _n_a_m_e is an indexed array variable (see AArrrraayyss above).
              --AA     Each _n_a_m_e is an associative array variable (see AArrrraayyss above).
              --ff     Use function names only.
              --ii     The variable is treated as an integer; arithmetic evaluation (see AARRIITTHHMMEETTIICC EEVVAALLUUAATTIIOONN above) is performed when the  variable  is  as‐
                     signed a value.
              --ll     When the variable is assigned a value, all upper-case characters are converted to lower-case.  The upper-case attribute is disabled.
              --nn     Give  each  _n_a_m_e the _n_a_m_e_r_e_f attribute, making it a name reference to another variable.  That other variable is defined by the value of
                     _n_a_m_e.  All references, assignments, and attribute modifications to _n_a_m_e, except those using or changing the --nn  attribute  itself,  are
                     performed on the variable referenced by _n_a_m_e's value.  The nameref attribute cannot be applied to array variables.
              --rr     Make _n_a_m_es readonly.  These names cannot then be assigned values by subsequent assignment statements or unset.
              --tt     Give  each  _n_a_m_e the _t_r_a_c_e attribute.  Traced functions inherit the DDEEBBUUGG and RREETTUURRNN traps from the calling shell.  The trace attribute
                     has no special meaning for variables.
              --uu     When the variable is assigned a value, all lower-case characters are converted to upper-case.  The lower-case attribute is disabled.
              --xx     Mark _n_a_m_es for export to subsequent commands via the environment.

              Using `+' instead of `-' turns off the attribute instead, with the exceptions that ++aa and ++AA may not be used to destroy array variables and ++rr
              will  not remove the readonly attribute.  When used in a function, ddeeccllaarree and ttyyppeesseett make each _n_a_m_e local, as with the llooccaall command, unless
              the --gg option is supplied.  If a variable name is followed by =_v_a_l_u_e, the value of the variable is set to _v_a_l_u_e.  When using --aa or --AA and  the
              compound assignment syntax to create array variables, additional attributes do not take effect until subsequent assignments.  The return value
              is 0 unless an invalid option is encountered, an attempt is made to define a function using ``-f foo=bar'', an attempt is  made  to  assign  a
              value  to a readonly variable, an attempt is made to assign a value to an array variable without using the compound assignment syntax (see AArr‐‐
              rraayyss above), one of the _n_a_m_e_s is not a valid shell variable name, an attempt is made to turn off readonly status for a readonly  variable,  an
              attempt is made to turn off array status for an array variable, or an attempt is made to display a non-existent function with --ff.

       ddiirrss [[--ccllppvv]] [[++_n]] [[--_n]]
              Without  options,  displays  the list of currently remembered directories.  The default display is on a single line with directory names sepa‐
              rated by spaces.  Directories are added to the list with the ppuusshhdd command; the ppooppdd command removes entries from the list.  The  current  di‐
              rectory is always the first directory in the stack.
              --cc     Clears the directory stack by deleting all of the entries.
              --ll     Produces a listing using full pathnames; the default listing format uses a tilde to denote the home directory.
              --pp     Print the directory stack with one entry per line.
              --vv     Print the directory stack with one entry per line, prefixing each entry with its index in the stack.
              ++_n     Displays the _nth entry counting from the left of the list shown by ddiirrss when invoked without options, starting with zero.
              --_n     Displays the _nth entry counting from the right of the list shown by ddiirrss when invoked without options, starting with zero.

              The return value is 0 unless an invalid option is supplied or _n indexes beyond the end of the directory stack.

       ddiissoowwnn [--aarr] [--hh] [_j_o_b_s_p_e_c ... | _p_i_d ... ]
              Without  options,  remove each _j_o_b_s_p_e_c from the table of active jobs.  If _j_o_b_s_p_e_c is not present, and neither the --aa nor the --rr option is sup‐
              plied, the _c_u_r_r_e_n_t _j_o_b is used.  If the --hh option is given, each _j_o_b_s_p_e_c is not removed from the table, but is marked so that  SSIIGGHHUUPP  is  not
              sent  to  the  job  if  the shell receives a SSIIGGHHUUPP.  If no _j_o_b_s_p_e_c is supplied, the --aa option means to remove or mark all jobs; the --rr option
              without a _j_o_b_s_p_e_c argument restricts operation to running jobs.  The return value is 0 unless a _j_o_b_s_p_e_c does not specify a valid job.

       eecchhoo [--nneeEE] [_a_r_g ...]
              Output the _a_r_gs, separated by spaces, followed by a newline.  The return status is 0 unless a write error occurs.  If  --nn  is  specified,  the
              trailing  newline  is suppressed.  If the --ee option is given, interpretation of the following backslash-escaped characters is enabled.  The --EE
              option disables the interpretation of these escape characters, even on systems where they are interpreted by default.  The xxppgg__eecchhoo shell  op‐
              tion  may be used to dynamically determine whether or not eecchhoo expands these escape characters by default.  eecchhoo does not interpret ---- to mean
              the end of options.  eecchhoo interprets the following escape sequences:
              \\aa     alert (bell)
              \\bb     backspace
              \\cc     suppress further output
              \\ee
              \\EE     an escape character
              \\ff     form feed
              \\nn     new line
              \\rr     carriage return
              \\tt     horizontal tab
              \\vv     vertical tab
              \\\\     backslash
              \\00_n_n_n  the eight-bit character whose value is the octal value _n_n_n (zero to three octal digits)
              \\xx_H_H   the eight-bit character whose value is the hexadecimal value _H_H (one or two hex digits)
              \\uu_H_H_H_H the Unicode (ISO/IEC 10646) character whose value is the hexadecimal value _H_H_H_H (one to four hex digits)
              \\UU_H_H_H_H_H_H_H_H
                     the Unicode (ISO/IEC 10646) character whose value is the hexadecimal value _H_H_H_H_H_H_H_H (one to eight hex digits)

       eennaabbllee [--aa] [--ddnnppss] [--ff _f_i_l_e_n_a_m_e] [_n_a_m_e ...]
              Enable and disable builtin shell commands.  Disabling a builtin allows a disk command which has the same name as a shell builtin  to  be  exe‐
              cuted without specifying a full pathname, even though the shell normally searches for builtins before disk commands.  If --nn is used, each _n_a_m_e
              is disabled; otherwise, _n_a_m_e_s are enabled.  For example, to use the tteesstt binary found via the PPAATTHH instead of the shell builtin  version,  run
              ``enable  -n  test''.   The  --ff option means to load the new builtin command _n_a_m_e from shared object _f_i_l_e_n_a_m_e, on systems that support dynamic
              loading.  The --dd option will delete a builtin previously loaded with --ff.  If no _n_a_m_e arguments are given, or if the --pp option is  supplied,  a
              list  of shell builtins is printed.  With no other option arguments, the list consists of all enabled shell builtins.  If --nn is supplied, only
              disabled builtins are printed.  If --aa is supplied, the list printed includes all builtins, with an indication of whether or not  each  is  en‐
              abled.  If --ss is supplied, the output is restricted to the POSIX _s_p_e_c_i_a_l builtins.  The return value is 0 unless a _n_a_m_e is not a shell builtin
              or there is an error loading a new builtin from a shared object.

       eevvaall [_a_r_g ...]
              The _a_r_gs are read and concatenated together into a single command.  This command is then read and executed by the shell, and its  exit  status
              is returned as the value of eevvaall.  If there are no _a_r_g_s, or only null arguments, eevvaall returns 0.

       eexxeecc [--ccll] [--aa _n_a_m_e] [_c_o_m_m_a_n_d [_a_r_g_u_m_e_n_t_s]]
              If  _c_o_m_m_a_n_d is specified, it replaces the shell.  No new process is created.  The _a_r_g_u_m_e_n_t_s become the arguments to _c_o_m_m_a_n_d.  If the --ll option
              is supplied, the shell places a dash at the beginning of the zeroth argument passed to _c_o_m_m_a_n_d.  This is what _l_o_g_i_n(1) does.   The  --cc  option
              causes _c_o_m_m_a_n_d to be executed with an empty environment.  If --aa is supplied, the shell passes _n_a_m_e as the zeroth argument to the executed com‐
              mand.  If _c_o_m_m_a_n_d cannot be executed for some reason, a non-interactive shell exits, unless the eexxeeccffaaiill shell option  is  enabled.   In  that
              case,  it  returns  failure.   An  interactive shell returns failure if the file cannot be executed.  A subshell exits unconditionally if eexxeecc
              fails.  If _c_o_m_m_a_n_d is not specified, any redirections take effect in the current shell, and the return status is 0.  If there is a redirection
              error, the return status is 1.

       eexxiitt [_n]
              Cause  the  shell  to exit with a status of _n.  If _n is omitted, the exit status is that of the last command executed.  A trap on EEXXIITT is exe‐
              cuted before the shell terminates.

       eexxppoorrtt [--ffnn] [_n_a_m_e[=_w_o_r_d]] ...
       eexxppoorrtt --pp
              The supplied _n_a_m_e_s are marked for automatic export to the environment of subsequently executed commands.  If the --ff option is given, the _n_a_m_e_s
              refer to functions.  If no _n_a_m_e_s are given, or if the --pp option is supplied, a list of names of all exported variables is printed.  The --nn op‐
              tion causes the export property to be removed from each _n_a_m_e.  If a variable name is followed by =_w_o_r_d, the value of the variable  is  set  to
              _w_o_r_d.   eexxppoorrtt returns an exit status of 0 unless an invalid option is encountered, one of the _n_a_m_e_s is not a valid shell variable name, or --ff
              is supplied with a _n_a_m_e that is not a function.

       ffcc [--ee _e_n_a_m_e] [--llnnrr] [_f_i_r_s_t] [_l_a_s_t]
       ffcc --ss [_p_a_t=_r_e_p] [_c_m_d]
              The first form selects a range of commands from _f_i_r_s_t to _l_a_s_t from the history list and displays or edits and  re-executes  them.   _F_i_r_s_t  and
              _l_a_s_t  may  be  specified  as  a string (to locate the last command beginning with that string) or as a number (an index into the history list,
              where a negative number is used as an offset from the current command number).  When listing, a _f_i_r_s_t or _l_a_s_t of 0 is equivalent to -1 and  -0
              is  equivalent  to the current command (usually the ffcc command); otherwise 0 is equivalent to -1 and -0 is invalid.  If _l_a_s_t is not specified,
              it is set to the current command for listing (so that ``fc -l -10'' prints the last 10 commands) and to _f_i_r_s_t  otherwise.   If  _f_i_r_s_t  is  not
              specified, it is set to the previous command for editing and -16 for listing.

              The  --nn option suppresses the command numbers when listing.  The --rr option reverses the order of the commands.  If the --ll option is given, the
              commands are listed on standard output.  Otherwise, the editor given by _e_n_a_m_e is invoked on a file containing those commands.  If _e_n_a_m_e is not
              given,  the value of the FFCCEEDDIITT variable is used, and the value of EEDDIITTOORR if FFCCEEDDIITT is not set.  If neither variable is set, _v_i is used.  When
              editing is complete, the edited commands are echoed and executed.

              In the second form, _c_o_m_m_a_n_d is re-executed after each instance of _p_a_t is replaced by _r_e_p.  _C_o_m_m_a_n_d is interpreted the same as _f_i_r_s_t above.   A
              useful  alias  to use with this is ``r="fc -s"'', so that typing ``r cc'' runs the last command beginning with ``cc'' and typing ``r'' re-exe‐
              cutes the last command.

              If the first form is used, the return value is 0 unless an invalid option is encountered or _f_i_r_s_t or _l_a_s_t specify history lines out of  range.
              If the --ee option is supplied, the return value is the value of the last command executed or failure if an error occurs with the temporary file
              of commands.  If the second form is used, the return status is that of the command re-executed, unless _c_m_d does not specify  a  valid  history
              line, in which case ffcc returns failure.

       ffgg [_j_o_b_s_p_e_c]
              Resume _j_o_b_s_p_e_c in the foreground, and make it the current job.  If _j_o_b_s_p_e_c is not present, the shell's notion of the _c_u_r_r_e_n_t _j_o_b is used.  The
              return value is that of the command placed into the foreground, or failure if run when job control is disabled or, when run with  job  control
              enabled, if _j_o_b_s_p_e_c does not specify a valid job or _j_o_b_s_p_e_c specifies a job that was started without job control.

       ggeettooppttss _o_p_t_s_t_r_i_n_g _n_a_m_e [_a_r_g _._._.]
              ggeettooppttss is used by shell procedures to parse positional parameters.  _o_p_t_s_t_r_i_n_g contains the option characters to be recognized; if a character
              is followed by a colon, the option is expected to have an argument, which should be separated from it by white space.  The colon and  question
              mark  characters  may  not  be used as option characters.  Each time it is invoked, ggeettooppttss places the next option in the shell variable _n_a_m_e,
              initializing _n_a_m_e if it does not exist, and the index of the next argument to be processed into the variable OOPPTTIINNDD.  OOPPTTIINNDD is initialized to
              1  each  time the shell or a shell script is invoked.  When an option requires an argument, ggeettooppttss places that argument into the variable OOPP‐‐
              TTAARRGG.  The shell does not reset OOPPTTIINNDD automatically; it must be manually reset between multiple calls to ggeettooppttss within the same shell  invo‐
              cation if a new set of parameters is to be used.

              When  the end of options is encountered, ggeettooppttss exits with a return value greater than zero.  OOPPTTIINNDD is set to the index of the first non-op‐
              tion argument, and _n_a_m_e is set to ?.

              ggeettooppttss normally parses the positional parameters, but if more arguments are supplied as _a_r_g values, ggeettooppttss parses those instead.

              ggeettooppttss can report errors in two ways.  If the first character of _o_p_t_s_t_r_i_n_g is a colon, _s_i_l_e_n_t error reporting is used.  In normal  operation,
              diagnostic  messages are printed when invalid options or missing option arguments are encountered.  If the variable OOPPTTEERRRR is set to 0, no er‐
              ror messages will be displayed, even if the first character of _o_p_t_s_t_r_i_n_g is not a colon.

              If an invalid option is seen, ggeettooppttss places ? into _n_a_m_e and, if not silent, prints an error message and unsets OOPPTTAARRGG.  If ggeettooppttss is silent,
              the option character found is placed in OOPPTTAARRGG and no diagnostic message is printed.

              If  a required argument is not found, and ggeettooppttss is not silent, a question mark (??) is placed in _n_a_m_e, OOPPTTAARRGG is unset, and a diagnostic mes‐
              sage is printed.  If ggeettooppttss is silent, then a colon (::) is placed in _n_a_m_e and OOPPTTAARRGG is set to the option character found.

              ggeettooppttss returns true if an option, specified or unspecified, is found.  It returns false if the end of options is encountered or an error  oc‐
              curs.

       hhaasshh [--llrr] [--pp _f_i_l_e_n_a_m_e] [--ddtt] [_n_a_m_e]
              Each time hhaasshh is invoked, the full pathname of the command _n_a_m_e is determined by searching the directories in $$PPAATTHH and remembered.  Any pre‐
              viously-remembered pathname is discarded.  If the --pp option is supplied, no path search is performed, and _f_i_l_e_n_a_m_e is used as the  full  file‐
              name  of the command.  The --rr option causes the shell to forget all remembered locations.  The --dd option causes the shell to forget the remem‐
              bered location of each _n_a_m_e.  If the --tt option is supplied, the full pathname to which each _n_a_m_e corresponds is printed.  If multiple _n_a_m_e ar‐
              guments  are  supplied  with --tt, the _n_a_m_e is printed before the hashed full pathname.  The --ll option causes output to be displayed in a format
              that may be reused as input.  If no arguments are given, or if only --ll is supplied, information about remembered commands is printed.  The re‐
              turn status is true unless a _n_a_m_e is not found or an invalid option is supplied.

       hheellpp [--ddmmss] [_p_a_t_t_e_r_n]
              Display  helpful information about builtin commands.  If _p_a_t_t_e_r_n is specified, hheellpp gives detailed help on all commands matching _p_a_t_t_e_r_n; oth‐
              erwise help for all the builtins and shell control structures is printed.
              --dd     Display a short description of each _p_a_t_t_e_r_n
              --mm     Display the description of each _p_a_t_t_e_r_n in a manpage-like format
              --ss     Display only a short usage synopsis for each _p_a_t_t_e_r_n

              The return status is 0 unless no command matches _p_a_t_t_e_r_n.

       hhiissttoorryy [[_n]]
       hhiissttoorryy --cc
       hhiissttoorryy --dd _o_f_f_s_e_t
       hhiissttoorryy --dd _s_t_a_r_t-_e_n_d
       hhiissttoorryy --aannrrww [_f_i_l_e_n_a_m_e]
       hhiissttoorryy --pp _a_r_g [_a_r_g _._._.]
       hhiissttoorryy --ss _a_r_g [_a_r_g _._._.]
              With no options, display the command history list with line numbers.  Lines listed with a ** have been modified.  An argument of _n  lists  only
              the last _n lines.  If the shell variable HHIISSTTTTIIMMEEFFOORRMMAATT is set and not null, it is used as a format string for _s_t_r_f_t_i_m_e(3) to display the time
              stamp associated with each displayed history entry.  No intervening blank is printed between the formatted time stamp and  the  history  line.
              If  _f_i_l_e_n_a_m_e  is  supplied, it is used as the name of the history file; if not, the value of HHIISSTTFFIILLEE is used.  Options, if supplied, have the
              following meanings:
              --cc     Clear the history list by deleting all the entries.
              --dd _o_f_f_s_e_t
                     Delete the history entry at position _o_f_f_s_e_t.  If _o_f_f_s_e_t is negative, it is interpreted as relative to one greater than the last history
                     position, so negative indices count back from the end of the history, and an index of -1 refers to the current hhiissttoorryy --dd command.
              --dd _s_t_a_r_t-_e_n_d
                     Delete  the history entries between positions _s_t_a_r_t and _e_n_d, inclusive.  Positive and negative values for _s_t_a_r_t and _e_n_d are interpreted
                     as described above.
              --aa     Append the ``new'' history lines to the history file.  These are history lines entered since the beginning of the current bbaasshh session,
                     but not already appended to the history file.
              --nn     Read  the  history lines not already read from the history file into the current history list.  These are lines appended to the history
                     file since the beginning of the current bbaasshh session.
              --rr     Read the contents of the history file and append them to the current history list.
              --ww     Write the current history list to the history file, overwriting the history file's contents.
              --pp     Perform history substitution on the following _a_r_g_s and display the result on the standard output.  Does not store the  results  in  the
                     history list.  Each _a_r_g must be quoted to disable normal history expansion.
              --ss     Store the _a_r_g_s in the history list as a single entry.  The last command in the history list is removed before the _a_r_g_s are added.

              If  the  HHIISSTTTTIIMMEEFFOORRMMAATT  variable is set, the time stamp information associated with each history entry is written to the history file, marked
              with the history comment character.  When the history file is read, lines beginning with the history comment character followed immediately by
              a  digit are interpreted as timestamps for the following history entry.  The return value is 0 unless an invalid option is encountered, an er‐
              ror occurs while reading or writing the history file, an invalid _o_f_f_s_e_t is supplied as an argument to --dd, or the history expansion supplied as
              an argument to --pp fails.

       jjoobbss [--llnnpprrss] [ _j_o_b_s_p_e_c ... ]
       jjoobbss --xx _c_o_m_m_a_n_d [ _a_r_g_s ... ]
              The first form lists the active jobs.  The options have the following meanings:
              --ll     List process IDs in addition to the normal information.
              --nn     Display information only about jobs that have changed status since the user was last notified of their status.
              --pp     List only the process ID of the job's process group leader.
              --rr     Display only running jobs.
              --ss     Display only stopped jobs.

              If _j_o_b_s_p_e_c is given, output is restricted to information about that job.  The return status is 0 unless an invalid option is encountered or an
              invalid _j_o_b_s_p_e_c is supplied.

              If the --xx option is supplied, jjoobbss replaces any _j_o_b_s_p_e_c found in _c_o_m_m_a_n_d or _a_r_g_s with the corresponding process group ID, and executes _c_o_m_m_a_n_d
              passing it _a_r_g_s, returning its exit status.

       kkiillll [--ss _s_i_g_s_p_e_c | --nn _s_i_g_n_u_m | --_s_i_g_s_p_e_c] [_p_i_d | _j_o_b_s_p_e_c] ...
       kkiillll --ll|--LL [_s_i_g_s_p_e_c | _e_x_i_t___s_t_a_t_u_s]
              Send the signal named by _s_i_g_s_p_e_c or _s_i_g_n_u_m to the processes named by _p_i_d or _j_o_b_s_p_e_c.  _s_i_g_s_p_e_c is either a case-insensitive signal name such as
              SSIIGGKKIILLLL (with or without the SSIIGG prefix) or a signal number; _s_i_g_n_u_m is a signal number.  If _s_i_g_s_p_e_c is not present, then SSIIGGTTEERRMM  is  assumed.
              An argument of --ll lists the signal names.  If any arguments are supplied when --ll is given, the names of the signals corresponding to the argu‐
              ments are listed, and the return status is 0.  The _e_x_i_t___s_t_a_t_u_s argument to --ll is a number specifying either a signal number or the exit status
              of  a  process terminated by a signal.  The --LL option is equivalent to --ll.  kkiillll returns true if at least one signal was successfully sent, or
              false if an error occurs or an invalid option is encountered.

       lleett _a_r_g [_a_r_g ...]
              Each _a_r_g is an arithmetic expression to be evaluated (see AARRIITTHHMMEETTIICC EEVVAALLUUAATTIIOONN above).  If the last _a_r_g evaluates to 0, lleett returns 1;  0  is
              returned otherwise.

       llooccaall [_o_p_t_i_o_n] [_n_a_m_e[=_v_a_l_u_e] ... | - ]
              For  each  argument,  a  local  variable named _n_a_m_e is created, and assigned _v_a_l_u_e.  The _o_p_t_i_o_n can be any of the options accepted by ddeeccllaarree.
              When llooccaall is used within a function, it causes the variable _n_a_m_e to have a visible scope restricted to that function and  its  children.   If
              _n_a_m_e  is  -, the set of shell options is made local to the function in which llooccaall is invoked: shell options changed using the sseett builtin in‐
              side the function are restored to their original values when the function returns.  The restore is effected as if a  series  of  sseett  commands
              were  executed  to restore the values that were in place before the function.  With no operands, llooccaall writes a list of local variables to the
              standard output.  It is an error to use llooccaall when not within a function.  The return status is 0 unless llooccaall is used outside a function,  an
              invalid _n_a_m_e is supplied, or _n_a_m_e is a readonly variable.

       llooggoouutt Exit a login shell.

       mmaappffiillee [--dd _d_e_l_i_m] [--nn _c_o_u_n_t] [--OO _o_r_i_g_i_n] [--ss _c_o_u_n_t] [--tt] [--uu _f_d] [--CC _c_a_l_l_b_a_c_k] [--cc _q_u_a_n_t_u_m] [_a_r_r_a_y]
       rreeaaddaarrrraayy [--dd _d_e_l_i_m] [--nn _c_o_u_n_t] [--OO _o_r_i_g_i_n] [--ss _c_o_u_n_t] [--tt] [--uu _f_d] [--CC _c_a_l_l_b_a_c_k] [--cc _q_u_a_n_t_u_m] [_a_r_r_a_y]
              Read  lines from the standard input into the indexed array variable _a_r_r_a_y, or from file descriptor _f_d if the --uu option is supplied.  The vari‐
              able MMAAPPFFIILLEE is the default _a_r_r_a_y.  Options, if supplied, have the following meanings:
              --dd     The first character of _d_e_l_i_m is used to terminate each input line, rather than newline.  If _d_e_l_i_m is the  empty  string,  mmaappffiillee  will
                     terminate a line when it reads a NUL character.
              --nn     Copy at most _c_o_u_n_t lines.  If _c_o_u_n_t is 0, all lines are copied.
              --OO     Begin assigning to _a_r_r_a_y at index _o_r_i_g_i_n.  The default index is 0.
              --ss     Discard the first _c_o_u_n_t lines read.
              --tt     Remove a trailing _d_e_l_i_m (default newline) from each line read.
              --uu     Read lines from file descriptor _f_d instead of the standard input.
              --CC     Evaluate _c_a_l_l_b_a_c_k each time _q_u_a_n_t_u_m lines are read.  The --cc option specifies _q_u_a_n_t_u_m.
              --cc     Specify the number of lines read between each call to _c_a_l_l_b_a_c_k.

              If --CC is specified without --cc, the default quantum is 5000.  When _c_a_l_l_b_a_c_k is evaluated, it is supplied the index of the next array element to
              be assigned and the line to be assigned to that element as additional arguments.  _c_a_l_l_b_a_c_k is evaluated after the line is read but before  the
              array element is assigned.

              If not supplied with an explicit origin, mmaappffiillee will clear _a_r_r_a_y before assigning to it.

              mmaappffiillee  returns successfully unless an invalid option or option argument is supplied, _a_r_r_a_y is invalid or unassignable, or if _a_r_r_a_y is not an
              indexed array.

       ppooppdd [-nn] [+_n] [-_n]
              Removes entries from the directory stack.  With no arguments, removes the top directory from the stack, and performs a ccdd to the new  top  di‐
              rectory.  Arguments, if supplied, have the following meanings:
              --nn     Suppresses the normal change of directory when removing directories from the stack, so that only the stack is manipulated.
              ++_n     Removes the _nth entry counting from the left of the list shown by ddiirrss, starting with zero.  For example: ``popd +0'' removes the first
                     directory, ``popd +1'' the second.
              --_n     Removes the _nth entry counting from the right of the list shown by ddiirrss, starting with zero.  For example: ``popd -0'' removes the last
                     directory, ``popd -1'' the next to last.

              If  the  ppooppdd  command is successful, a ddiirrss is performed as well, and the return status is 0.  ppooppdd returns false if an invalid option is en‐
              countered, the directory stack is empty, a non-existent directory stack entry is specified, or the directory change fails.

       pprriinnttff [--vv _v_a_r] _f_o_r_m_a_t [_a_r_g_u_m_e_n_t_s]
              Write the formatted _a_r_g_u_m_e_n_t_s to the standard output under the control of the _f_o_r_m_a_t.  The --vv option causes the output to be assigned  to  the
              variable _v_a_r rather than being printed to the standard output.

              The  _f_o_r_m_a_t is a character string which contains three types of objects: plain characters, which are simply copied to standard output, charac‐
              ter escape sequences, which are converted and copied to the standard output, and format specifications, each of which causes printing  of  the
              next successive _a_r_g_u_m_e_n_t.  In addition to the standard _p_r_i_n_t_f(1) format specifications, pprriinnttff interprets the following extensions:
              %%bb     causes pprriinnttff to expand backslash escape sequences in the corresponding _a_r_g_u_m_e_n_t in the same way as eecchhoo --ee.
              %%qq     causes pprriinnttff to output the corresponding _a_r_g_u_m_e_n_t in a format that can be reused as shell input.
              %%((_d_a_t_e_f_m_t))TT
                     causes  pprriinnttff to output the date-time string resulting from using _d_a_t_e_f_m_t as a format string for _s_t_r_f_t_i_m_e(3).  The corresponding _a_r_g_u_‐
                     _m_e_n_t is an integer representing the number of seconds since the epoch.  Two special argument values may be used: -1 represents the cur‐
                     rent  time, and -2 represents the time the shell was invoked.  If no argument is specified, conversion behaves as if -1 had been given.
                     This is an exception to the usual pprriinnttff behavior.

              The %b, %q, and %T directives all use the field width and precision arguments from the format specification and write that many bytes from (or
              use that wide a field for) the expanded argument, which usually contains more characters than the original.

              Arguments  to non-string format specifiers are treated as C constants, except that a leading plus or minus sign is allowed, and if the leading
              character is a single or double quote, the value is the ASCII value of the following character.

              The _f_o_r_m_a_t is reused as necessary to consume all of the _a_r_g_u_m_e_n_t_s.  If the _f_o_r_m_a_t requires more _a_r_g_u_m_e_n_t_s than are supplied, the extra  format
              specifications  behave as if a zero value or null string, as appropriate, had been supplied.  The return value is zero on success, non-zero on
              failure.

       ppuusshhdd [--nn] [+_n] [-_n]
       ppuusshhdd [--nn] [_d_i_r]
              Adds a directory to the top of the directory stack, or rotates the stack, making the new top of the stack the current working directory.  With
              no  arguments,  ppuusshhdd  exchanges the top two directories and returns 0, unless the directory stack is empty.  Arguments, if supplied, have the
              following meanings:
              --nn     Suppresses the normal change of directory when rotating or adding directories to the stack, so that only the stack is manipulated.
              ++_n     Rotates the stack so that the _nth directory (counting from the left of the list shown by ddiirrss, starting with zero) is at the top.
              --_n     Rotates the stack so that the _nth directory (counting from the right of the list shown by ddiirrss, starting with zero) is at the top.
              _d_i_r    Adds _d_i_r to the directory stack at the top, making it the new current working directory as if it had been supplied as the  argument  to
                     the ccdd builtin.

              If the ppuusshhdd command is successful, a ddiirrss is performed as well.  If the first form is used, ppuusshhdd returns 0 unless the cd to _d_i_r fails.  With
              the second form, ppuusshhdd returns 0 unless the directory stack is empty, a non-existent directory stack element is specified,  or  the  directory
              change to the specified new current directory fails.

       ppwwdd [--LLPP]
              Print the absolute pathname of the current working directory.  The pathname printed contains no symbolic links if the --PP option is supplied or
              the --oo pphhyyssiiccaall option to the sseett builtin command is enabled.  If the --LL option is used, the pathname printed may contain symbolic links.  The
              return status is 0 unless an error occurs while reading the name of the current directory or an invalid option is supplied.

       rreeaadd [--eerrss] [--aa _a_n_a_m_e] [--dd _d_e_l_i_m] [--ii _t_e_x_t] [--nn _n_c_h_a_r_s] [--NN _n_c_h_a_r_s] [--pp _p_r_o_m_p_t] [--tt _t_i_m_e_o_u_t] [--uu _f_d] [_n_a_m_e ...]
              One  line  is  read  from the standard input, or from the file descriptor _f_d supplied as an argument to the --uu option, split into words as de‐
              scribed above under WWoorrdd SSpplliittttiinngg, and the first word is assigned to the first _n_a_m_e, the second word to the second _n_a_m_e, and so on.  If there
              are  more words than names, the remaining words and their intervening delimiters are assigned to the last _n_a_m_e.  If there are fewer words read
              from the input stream than names, the remaining names are assigned empty values.  The characters in IIFFSS are used to split the line into  words
              using  the  same rules the shell uses for expansion (described above under WWoorrdd SSpplliittttiinngg).  The backslash character (\\) may be used to remove
              any special meaning for the next character read and for line continuation.  Options, if supplied, have the following meanings:
              --aa _a_n_a_m_e
                     The words are assigned to sequential indices of the array variable _a_n_a_m_e, starting at 0.  _a_n_a_m_e is unset before any new values are  as‐
                     signed.  Other _n_a_m_e arguments are ignored.
              --dd _d_e_l_i_m
                     The  first character of _d_e_l_i_m is used to terminate the input line, rather than newline.  If _d_e_l_i_m is the empty string, rreeaadd will termi‐
                     nate a line when it reads a NUL character.
              --ee     If the standard input is coming from a terminal, rreeaaddlliinnee (see RREEAADDLLIINNEE above) is used to obtain the line.  Readline uses  the  current
                     (or default, if line editing was not previously active) editing settings, but uses Readline's default filename completion.
              --ii _t_e_x_t
                     If rreeaaddlliinnee is being used to read the line, _t_e_x_t is placed into the editing buffer before editing begins.
              --nn _n_c_h_a_r_s
                     rreeaadd  returns  after  reading  _n_c_h_a_r_s characters rather than waiting for a complete line of input, but honors a delimiter if fewer than
                     _n_c_h_a_r_s characters are read before the delimiter.
              --NN _n_c_h_a_r_s
                     rreeaadd returns after reading exactly _n_c_h_a_r_s characters rather than waiting for a complete line of input, unless  EOF  is  encountered  or
                     rreeaadd  times  out.  Delimiter characters encountered in the input are not treated specially and do not cause rreeaadd to return until _n_c_h_a_r_s
                     characters are read.  The result is not split on the characters in IIFFSS; the intent is that the variable is assigned exactly the charac‐
                     ters read (with the exception of backslash; see the --rr option below).
              --pp _p_r_o_m_p_t
                     Display _p_r_o_m_p_t on standard error, without a trailing newline, before attempting to read any input.  The prompt is displayed only if in‐
                     put is coming from a terminal.
              --rr     Backslash does not act as an escape character.  The backslash is considered to be part of the line.  In particular, a backslash-newline
                     pair may not then be used as a line continuation.
              --ss     Silent mode.  If input is coming from a terminal, characters are not echoed.
              --tt _t_i_m_e_o_u_t
                     Cause  rreeaadd to time out and return failure if a complete line of input (or a specified number of characters) is not read within _t_i_m_e_o_u_t
                     seconds.  _t_i_m_e_o_u_t may be a decimal number with a fractional portion following the decimal point.  This option is only effective if rreeaadd
                     is  reading  input  from a terminal, pipe, or other special file; it has no effect when reading from regular files.  If rreeaadd times out,
                     rreeaadd saves any partial input read into the specified variable _n_a_m_e.  If _t_i_m_e_o_u_t is 0, rreeaadd returns immediately, without trying to  read
                     any data.  The exit status is 0 if input is available on the specified file descriptor, non-zero otherwise.  The exit status is greater
                     than 128 if the timeout is exceeded.
              --uu _f_d  Read input from file descriptor _f_d.

              If no _n_a_m_e_s are supplied, the line read, without the ending delimiter but otherwise unmodified, is assigned to the variable RREEPPLLYY.   The  exit
              status  is zero, unless end-of-file is encountered, rreeaadd times out (in which case the status is greater than 128), a variable assignment error
              (such as assigning to a readonly variable) occurs, or an invalid file descriptor is supplied as the argument to --uu.

       rreeaaddoonnllyy [--aaAAff] [--pp] [_n_a_m_e[=_w_o_r_d] ...]
              The given _n_a_m_e_s are marked readonly; the values of these _n_a_m_e_s may not be changed by subsequent assignment.  If the --ff option is supplied, the
              functions  corresponding  to  the  _n_a_m_e_s  are so marked.  The --aa option restricts the variables to indexed arrays; the --AA option restricts the
              variables to associative arrays.  If both options are supplied, --AA takes precedence.  If no _n_a_m_e arguments are given, or if the --pp  option  is
              supplied,  a  list  of all readonly names is printed.  The other options may be used to restrict the output to a subset of the set of readonly
              names.  The --pp option causes output to be displayed in a format that may be reused as input.  If a variable name is  followed  by  =_w_o_r_d,  the
              value  of  the variable is set to _w_o_r_d.  The return status is 0 unless an invalid option is encountered, one of the _n_a_m_e_s is not a valid shell
              variable name, or --ff is supplied with a _n_a_m_e that is not a function.

       rreettuurrnn [_n]
              Causes a function to stop executing and return the value specified by _n to its caller.  If _n is omitted, the return status is that of the last
              command  executed  in  the  function body.  If rreettuurrnn is executed by a trap handler, the last command used to determine the status is the last
              command executed before the trap handler.  If rreettuurrnn is executed during a DDEEBBUUGG trap, the last command used to determine  the  status  is  the
              last  command  executed by the trap handler before rreettuurrnn was invoked.  If rreettuurrnn is used outside a function, but during execution of a script
              by the ..  (ssoouurrccee) command, it causes the shell to stop executing that script and return either _n or the exit status of the last command  exe‐
              cuted  within  the  script  as the exit status of the script.  If _n is supplied, the return value is its least significant 8 bits.  The return
              status is non-zero if rreettuurrnn is supplied a non-numeric argument, or is used outside a function and not during execution of a script  by  ..  or
              ssoouurrccee.  Any command associated with the RREETTUURRNN trap is executed before execution resumes after the function or script.

       sseett [----aabbeeffhhkkmmnnppttuuvvxxBBCCEEHHPPTT] [--oo _o_p_t_i_o_n_-_n_a_m_e] [_a_r_g ...]
       sseett [++aabbeeffhhkkmmnnppttuuvvxxBBCCEEHHPPTT] [++oo _o_p_t_i_o_n_-_n_a_m_e] [_a_r_g ...]
              Without  options, the name and value of each shell variable are displayed in a format that can be reused as input for setting or resetting the
              currently-set variables.  Read-only variables cannot be reset.  In _p_o_s_i_x _m_o_d_e, only shell variables are listed.  The output is sorted  accord‐
              ing  to  the current locale.  When options are specified, they set or unset shell attributes.  Any arguments remaining after option processing
              are treated as values for the positional parameters and are assigned, in order, to $$11, $$22, ......  $$_n.  Options, if specified, have the following
              meanings:
              --aa      Each variable or function that is created or modified is given the export attribute and marked for export to the environment of subse‐
                      quent commands.
              --bb      Report the status of terminated background jobs immediately, rather than before the next primary prompt.  This is effective only  when
                      job control is enabled.
              --ee      Exit  immediately  if  a  _p_i_p_e_l_i_n_e  (which  may  consist of a single _s_i_m_p_l_e _c_o_m_m_a_n_d), a _l_i_s_t, or a _c_o_m_p_o_u_n_d _c_o_m_m_a_n_d (see SSHHEELLLL GGRRAAMMMMAARR
                      above), exits with a non-zero status.  The shell does not exit if the command that fails is part of the command list immediately  fol‐
                      lowing  a wwhhiillee or uunnttiill keyword, part of the test following the iiff or eelliiff reserved words, part of any command executed in a &&&& or ||||
                      list except the command following the final &&&& or ||||, any command in a pipeline but the last, or if the command's return value is  be‐
                      ing  inverted with !!.  If a compound command other than a subshell returns a non-zero status because a command failed while --ee was be‐
                      ing ignored, the shell does not exit.  A trap on EERRRR, if set, is executed before the shell exits.  This option applies  to  the  shell
                      environment and each subshell environment separately (see CCOOMMMMAANNDD EEXXEECCUUTTIIOONN EENNVVIIRROONNMMEENNTT above), and may cause subshells to exit before
                      executing all the commands in the subshell.

                      If a compound command or shell function executes in a context where --ee is being ignored, none of the commands executed within the com‐
                      pound  command  or  function  body will be affected by the --ee setting, even if --ee is set and a command returns a failure status.  If a
                      compound command or shell function sets --ee while executing in a context where --ee is ignored, that setting will not have any effect un‐
                      til the compound command or the command containing the function call completes.
              --ff      Disable pathname expansion.
              --hh      Remember the location of commands as they are looked up for execution.  This is enabled by default.
              --kk      All  arguments  in the form of assignment statements are placed in the environment for a command, not just those that precede the com‐
                      mand name.
              --mm      Monitor mode.  Job control is enabled.  This option is on by default for interactive shells on systems that support it (see  JJOOBB  CCOONN‐‐
                      TTRROOLL  above).  All processes run in a separate process group.  When a background job completes, the shell prints a line containing its
                      exit status.
              --nn      Read commands but do not execute them.  This may be used to check a shell script for syntax errors.  This is  ignored  by  interactive
                      shells.
              --oo _o_p_t_i_o_n_-_n_a_m_e
                      The _o_p_t_i_o_n_-_n_a_m_e can be one of the following:
                      aalllleexxppoorrtt
                              Same as --aa.
                      bbrraacceeeexxppaanndd
                              Same as --BB.
                      eemmaaccss   Use an emacs-style command line editing interface.  This is enabled by default when the shell is interactive, unless the shell
                              is started with the ----nnooeeddiittiinngg option.  This also affects the editing interface used for rreeaadd --ee.
                      eerrrreexxiitt Same as --ee.
                      eerrrrttrraaccee
                              Same as --EE.
                      ffuunnccttrraaccee
                              Same as --TT.
                      hhaasshhaallll Same as --hh.
                      hhiisstteexxppaanndd
                              Same as --HH.
                      hhiissttoorryy Enable command history, as described above under HHIISSTTOORRYY.  This option is on by default in interactive shells.
                      iiggnnoorreeeeooff
                              The effect is as if the shell command ``IGNOREEOF=10'' had been executed (see SShheellll VVaarriiaabblleess above).
                      kkeeyywwoorrdd Same as --kk.
                      mmoonniittoorr Same as --mm.
                      nnoocclloobbbbeerr
                              Same as --CC.
                      nnooeexxeecc  Same as --nn.
                      nnoogglloobb  Same as --ff.
                      nnoolloogg   Currently ignored.
                      nnoottiiffyy  Same as --bb.
                      nnoouunnsseett Same as --uu.
                      oonneeccmmdd  Same as --tt.
                      pphhyyssiiccaall
                              Same as --PP.
                      ppiippeeffaaiill
                              If set, the return value of a pipeline is the value of the last (rightmost) command to exit with a non-zero status, or zero if
                              all commands in the pipeline exit successfully.  This option is disabled by default.
                      ppoossiixx   Change  the  behavior  of bbaasshh where the default operation differs from the POSIX standard to match the standard (_p_o_s_i_x _m_o_d_e).
                              See SSEEEE AALLSSOO below for a reference to a document that details how posix mode affects bash's behavior.
                      pprriivviilleeggeedd
                              Same as --pp.
                      vveerrbboossee Same as --vv.
                      vvii      Use a vi-style command line editing interface.  This also affects the editing interface used for rreeaadd --ee.
                      xxttrraaccee  Same as --xx.
                      If --oo is supplied with no _o_p_t_i_o_n_-_n_a_m_e, the values of the current options are printed.  If ++oo is supplied with no _o_p_t_i_o_n_-_n_a_m_e, a series
                      of sseett commands to recreate the current option settings is displayed on the standard output.
              --pp      Turn on _p_r_i_v_i_l_e_g_e_d mode.  In this mode, the $$EENNVV and $$BBAASSHH__EENNVV files are not processed, shell functions are not inherited from the en‐
                      vironment, and the SSHHEELLLLOOPPTTSS, BBAASSHHOOPPTTSS, CCDDPPAATTHH, and GGLLOOBBIIGGNNOORREE variables, if they appear in the  environment,  are  ignored.   If  the
                      shell  is  started  with the effective user (group) id not equal to the real user (group) id, and the --pp option is not supplied, these
                      actions are taken and the effective user id is set to the real user id.  If the --pp option is supplied at startup, the  effective  user
                      id is not reset.  Turning this option off causes the effective user and group ids to be set to the real user and group ids.
              --tt      Exit after reading and executing one command.
              --uu      Treat  unset  variables  and parameters other than the special parameters "@" and "*" as an error when performing parameter expansion.
                      If expansion is attempted on an unset variable or parameter, the shell prints an error message, and, if not interactive, exits with  a
                      non-zero status.
              --vv      Print shell input lines as they are read.
              --xx      After  expanding each _s_i_m_p_l_e _c_o_m_m_a_n_d, ffoorr command, ccaassee command, sseelleecctt command, or arithmetic ffoorr command, display the expanded value
                      of PPSS44, followed by the command and its expanded arguments or associated word list.
              --BB      The shell performs brace expansion (see BBrraaccee EExxppaannssiioonn above).  This is on by default.
              --CC      If set, bbaasshh does not overwrite an existing file with the >>, >>&&, and <<>> redirection operators.  This may be overridden  when  creating
                      output files by using the redirection operator >>|| instead of >>.
              --EE      If  set, any trap on EERRRR is inherited by shell functions, command substitutions, and commands executed in a subshell environment.  The
                      EERRRR trap is normally not inherited in such cases.
              --HH      Enable !!  style history substitution.  This option is on by default when the shell is interactive.
              --PP      If set, the shell does not resolve symbolic links when executing commands such as ccdd that change the current  working  directory.   It
                      uses  the  physical  directory  structure instead.  By default, bbaasshh follows the logical chain of directories when performing commands
                      which change the current directory.
              --TT      If set, any traps on DDEEBBUUGG and RREETTUURRNN are inherited by shell functions, command substitutions, and commands executed in a subshell en‐
                      vironment.  The DDEEBBUUGG and RREETTUURRNN traps are normally not inherited in such cases.
              ----      If  no  arguments  follow  this option, then the positional parameters are unset.  Otherwise, the positional parameters are set to the
                      _a_r_gs, even if some of them begin with a --.
              --       Signal the end of options, cause all remaining _a_r_gs to be assigned to the positional parameters.  The --xx and  --vv  options  are  turned
                      off.  If there are no _a_r_gs, the positional parameters remain unchanged.

              The  options are off by default unless otherwise noted.  Using + rather than - causes these options to be turned off.  The options can also be
              specified as arguments to an invocation of the shell.  The current set of options may be found in $$--.  The return status is always true unless
              an invalid option is encountered.

       sshhiifftt [_n]
              The positional parameters from _n+1 ... are renamed to $$11 ........  Parameters represented by the numbers $$## down to $$##-_n+1 are unset.  _n must be a
              non-negative number less than or equal to $$##.  If _n is 0, no parameters are changed.  If _n is not given, it is assumed  to  be  1.   If  _n  is
              greater than $$##, the positional parameters are not changed.  The return status is greater than zero if _n is greater than $$## or less than zero;
              otherwise 0.

       sshhoopptt [--ppqqssuu] [--oo] [_o_p_t_n_a_m_e ...]
              Toggle the values of settings controlling optional shell behavior.  The settings can be either those listed below, or, if  the  --oo  option  is
              used,  those  available with the --oo option to the sseett builtin command.  With no options, or with the --pp option, a list of all settable options
              is displayed, with an indication of whether or not each is set; if _o_p_t_n_a_m_e_s are supplied, the output is restricted to those options.   The  --pp
              option causes output to be displayed in a form that may be reused as input.  Other options have the following meanings:
              --ss     Enable (set) each _o_p_t_n_a_m_e.
              --uu     Disable (unset) each _o_p_t_n_a_m_e.
              --qq     Suppresses  normal output (quiet mode); the return status indicates whether the _o_p_t_n_a_m_e is set or unset.  If multiple _o_p_t_n_a_m_e arguments
                     are given with --qq, the return status is zero if all _o_p_t_n_a_m_e_s are enabled; non-zero otherwise.
              --oo     Restricts the values of _o_p_t_n_a_m_e to be those defined for the --oo option to the sseett builtin.

              If either --ss or --uu is used with no _o_p_t_n_a_m_e arguments, sshhoopptt shows only those options which are set or unset, respectively.   Unless  otherwise
              noted, the sshhoopptt options are disabled (unset) by default.

              The return status when listing options is zero if all _o_p_t_n_a_m_e_s are enabled, non-zero otherwise.  When setting or unsetting options, the return
              status is zero unless an _o_p_t_n_a_m_e is not a valid shell option.

              The list of sshhoopptt options is:

              aassssoocc__eexxppaanndd__oonnccee
                      If set, the shell suppresses multiple evaluation of associative array subscripts during arithmetic expression evaluation,  while  exe‐
                      cuting builtins that can perform variable assignments, and while executing builtins that perform array dereferencing.
              aauuttooccdd  If  set, a command name that is the name of a directory is executed as if it were the argument to the ccdd command.  This option is only
                      used by interactive shells.
              ccddaabbllee__vvaarrss
                      If set, an argument to the ccdd builtin command that is not a directory is assumed to be the name of a variable whose value is  the  di‐
                      rectory to change to.
              ccddssppeellll If  set,  minor  errors in the spelling of a directory component in a ccdd command will be corrected.  The errors checked for are trans‐
                      posed characters, a missing character, and one character too many.  If a correction is found, the corrected filename is  printed,  and
                      the command proceeds.  This option is only used by interactive shells.
              cchheecckkhhaasshh
                      If  set, bbaasshh checks that a command found in the hash table exists before trying to execute it.  If a hashed command no longer exists,
                      a normal path search is performed.
              cchheecckkjjoobbss
                      If set, bbaasshh lists the status of any stopped and running jobs before exiting an interactive shell.  If  any  jobs  are  running,  this
                      causes the exit to be deferred until a second exit is attempted without an intervening command (see JJOOBB CCOONNTTRROOLL above).  The shell al‐
                      ways postpones exiting if any jobs are stopped.
              cchheecckkwwiinnssiizzee
                      If set, bbaasshh checks the window size after each external (non-builtin) command and, if necessary, updates the values of LLIINNEESS and  CCOOLL‐‐
                      UUMMNNSS.  This option is enabled by default.
              ccmmddhhiisstt If  set,  bbaasshh attempts to save all lines of a multiple-line command in the same history entry.  This allows easy re-editing of multi-
                      line commands.  This option is enabled by default, but only has an effect if command history is enabled, as described above under HHIISS‐‐
                      TTOORRYY.
              ccoommppaatt3311
              ccoommppaatt3322
              ccoommppaatt4400
              ccoommppaatt4411
              ccoommppaatt4422
              ccoommppaatt4433
              ccoommppaatt4444
                      These control aspects of the shell's compatibility mode (see SSHHEELLLL CCOOMMPPAATTIIBBIILLIITTYY MMOODDEE below).

              ccoommpplleettee__ffuullllqquuoottee
                      If  set,  bbaasshh  quotes all shell metacharacters in filenames and directory names when performing completion.  If not set, bbaasshh removes
                      metacharacters such as the dollar sign from the set of characters that will be quoted in completed filenames when these metacharacters
                      appear  in shell variable references in words to be completed.  This means that dollar signs in variable names that expand to directo‐
                      ries will not be quoted; however, any dollar signs appearing in filenames will not be quoted, either.  This is active only  when  bash
                      is  using  backslashes  to quote completed filenames.  This variable is set by default, which is the default bash behavior in versions
                      through 4.2.

              ddiirreexxppaanndd
                      If set, bbaasshh replaces directory names with the results of word expansion when performing filename completion.  This changes  the  con‐
                      tents of the readline editing buffer.  If not set, bbaasshh attempts to preserve what the user typed.

              ddiirrssppeellll
                      If  set, bbaasshh attempts spelling correction on directory names during word completion if the directory name initially supplied does not
                      exist.

              ddoottgglloobb If set, bbaasshh includes filenames beginning with a `.' in the results of pathname expansion.  The filenames ````..''''  and ````....''''  must  al‐
                      ways be matched explicitly, even if ddoottgglloobb is set.

              eexxeeccffaaiill
                      If  set, a non-interactive shell will not exit if it cannot execute the file specified as an argument to the eexxeecc builtin command.  An
                      interactive shell does not exit if eexxeecc fails.

              eexxppaanndd__aalliiaasseess
                      If set, aliases are expanded as described above under AALLIIAASSEESS.  This option is enabled by default for interactive shells.

              eexxttddeebbuugg
                      If set at shell invocation, or in a shell startup file, arrange to execute the debugger profile before the shell starts, identical  to
                      the ----ddeebbuuggggeerr option.  If set after invocation, behavior intended for use by debuggers is enabled:

                      11..     The --FF option to the ddeeccllaarree builtin displays the source file name and line number corresponding to each function name supplied
                             as an argument.

                      22..     If the command run by the DDEEBBUUGG trap returns a non-zero value, the next command is skipped and not executed.

                      33..     If the command run by the DDEEBBUUGG trap returns a value of 2, and the shell is executing in a subroutine (a shell  function  or  a
                             shell script executed by the .. or ssoouurrccee builtins), the shell simulates a call to rreettuurrnn.

                      44..     BBAASSHH__AARRGGCC and BBAASSHH__AARRGGVV are updated as described in their descriptions above.

                      55..     Function  tracing  is  enabled: command substitution, shell functions, and subshells invoked with (( _c_o_m_m_a_n_d )) inherit the DDEEBBUUGG
                             and RREETTUURRNN traps.

                      66..     Error tracing is enabled: command substitution, shell functions, and subshells invoked with (( _c_o_m_m_a_n_d )) inherit the EERRRR trap.

              eexxttgglloobb If set, the extended pattern matching features described above under PPaatthhnnaammee EExxppaannssiioonn are enabled.

              eexxttqquuoottee
                      If set, $$'_s_t_r_i_n_g' and $$"_s_t_r_i_n_g" quoting is performed within $${{_p_a_r_a_m_e_t_e_r}} expansions enclosed in double quotes.  This option is enabled
                      by default.

              ffaaiillgglloobb
                      If set, patterns which fail to match filenames during pathname expansion result in an expansion error.

              ffoorrccee__ffiiggnnoorree
                      If set, the suffixes specified by the FFIIGGNNOORREE shell variable cause words to be ignored when performing word completion even if the ig‐
                      nored words are the only possible completions.  See SSHHEELLLL VVAARRIIAABBLLEESS above for a description of FFIIGGNNOORREE.  This option is enabled by de‐
                      fault.

              gglloobbaasscciiiirraannggeess
                      If  set, range expressions used in pattern matching bracket expressions (see PPaatttteerrnn MMaattcchhiinngg above) behave as if in the traditional C
                      locale when performing comparisons.  That is, the current locale's collating sequence is not taken into account, so bb will not collate
                      between AA and BB, and upper-case and lower-case ASCII characters will collate together.

              gglloobbssttaarr
                      If  set, the pattern **** used in a pathname expansion context will match all files and zero or more directories and subdirectories.  If
                      the pattern is followed by a //, only directories and subdirectories match.

              ggnnuu__eerrrrffmmtt
                      If set, shell error messages are written in the standard GNU error message format.

              hhiissttaappppeenndd
                      If set, the history list is appended to the file named by the value of the HHIISSTTFFIILLEE variable when the shell exits, rather  than  over‐
                      writing the file.

              hhiissttrreeeeddiitt
                      If set, and rreeaaddlliinnee is being used, a user is given the opportunity to re-edit a failed history substitution.

              hhiissttvveerriiffyy
                      If  set, and rreeaaddlliinnee is being used, the results of history substitution are not immediately passed to the shell parser.  Instead, the
                      resulting line is loaded into the rreeaaddlliinnee editing buffer, allowing further modification.

              hhoossttccoommpplleettee
                      If set, and rreeaaddlliinnee is being used, bbaasshh will attempt to perform hostname completion when a word containing a  @@  is  being  completed
                      (see CCoommpplleettiinngg under RREEAADDLLIINNEE above).  This is enabled by default.

              hhuuppoonneexxiitt
                      If set, bbaasshh will send SSIIGGHHUUPP to all jobs when an interactive login shell exits.

              iinnhheerriitt__eerrrreexxiitt
                      If  set, command substitution inherits the value of the eerrrreexxiitt option, instead of unsetting it in the subshell environment.  This op‐
                      tion is enabled when _p_o_s_i_x _m_o_d_e is enabled.

              iinntteerraaccttiivvee__ccoommmmeennttss
                      If set, allow a word beginning with ## to cause that word and all remaining characters on that line to be  ignored  in  an  interactive
                      shell (see CCOOMMMMEENNTTSS above).  This option is enabled by default.

              llaassttppiippee
                      If  set,  and  job  control is not active, the shell runs the last command of a pipeline not executed in the background in the current
                      shell environment.

              lliitthhiisstt If set, and the ccmmddhhiisstt option is enabled, multi-line commands are saved to the history with embedded newlines rather than using semi‐
                      colon separators where possible.

              llooccaallvvaarr__iinnhheerriitt
                      If set, local variables inherit the value and attributes of a variable of the same name that exists at a previous scope before any new
                      value is assigned.  The nameref attribute is not inherited.

              llooccaallvvaarr__uunnsseett
                      If set, calling uunnsseett on local variables in previous function scopes marks them so subsequent lookups find them unset until that func‐
                      tion returns. This is identical to the behavior of unsetting local variables at the current function scope.

              llooggiinn__sshheellll
                      The shell sets this option if it is started as a login shell (see IINNVVOOCCAATTIIOONN above).  The value may not be changed.

              mmaaiillwwaarrnn
                      If  set,  and  a  file  that bbaasshh is checking for mail has been accessed since the last time it was checked, the message ``The mail in
                      _m_a_i_l_f_i_l_e has been read'' is displayed.

              nnoo__eemmppttyy__ccmmdd__ccoommpplleettiioonn
                      If set, and rreeaaddlliinnee is being used, bbaasshh will not attempt to search the PPAATTHH for possible completions when completion is attempted  on
                      an empty line.

              nnooccaasseegglloobb
                      If set, bbaasshh matches filenames in a case-insensitive fashion when performing pathname expansion (see PPaatthhnnaammee EExxppaannssiioonn above).

              nnooccaasseemmaattcchh
                      If  set, bbaasshh matches patterns in a case-insensitive fashion when performing matching while executing ccaassee or [[[[ conditional commands,
                      when performing pattern substitution word expansions, or when filtering possible completions as part of programmable completion.

              nnuullllgglloobb
                      If set, bbaasshh allows patterns which match no files (see PPaatthhnnaammee EExxppaannssiioonn above) to expand to a null string, rather than themselves.

              pprrooggccoommpp
                      If set, the programmable completion facilities (see PPrrooggrraammmmaabbllee CCoommpplleettiioonn above) are enabled.  This option is enabled by default.

              pprrooggccoommpp__aalliiaass
                      If set, and programmable completion is enabled, bbaasshh treats a command name that doesn't have any completions as a possible  alias  and
                      attempts alias expansion. If it has an alias, bbaasshh attempts programmable completion using the command word resulting from the expanded
                      alias.

              pprroommppttvvaarrss
                      If set, prompt strings undergo parameter expansion, command substitution, arithmetic expansion, and quote removal after being expanded
                      as described in PPRROOMMPPTTIINNGG above.  This option is enabled by default.

              rreessttrriicctteedd__sshheellll
                      The  shell  sets this option if it is started in restricted mode (see RREESSTTRRIICCTTEEDD SSHHEELLLL below).  The value may not be changed.  This is
                      not reset when the startup files are executed, allowing the startup files to discover whether or not a shell is restricted.

              sshhiifftt__vveerrbboossee
                      If set, the sshhiifftt builtin prints an error message when the shift count exceeds the number of positional parameters.

              ssoouurrcceeppaatthh
                      If set, the ssoouurrccee (..) builtin uses the value of PPAATTHH to find the directory containing the file supplied as an argument.  This  option
                      is enabled by default.

              xxppgg__eecchhoo
                      If set, the eecchhoo builtin expands backslash-escape sequences by default.

       ssuussppeenndd [--ff]
              Suspend the execution of this shell until it receives a SSIIGGCCOONNTT signal.  A login shell cannot be suspended; the --ff option can be used to over‐
              ride this and force the suspension.  The return status is 0 unless the shell is a login shell and --ff is not supplied, or if job control is not
              enabled.

       tteesstt _e_x_p_r
       [[ _e_x_p_r ]]
              Return  a status of 0 (true) or 1 (false) depending on the evaluation of the conditional expression _e_x_p_r.  Each operator and operand must be a
              separate argument.  Expressions are composed of the primaries described above under CCOONNDDIITTIIOONNAALL EEXXPPRREESSSSIIOONNSS.  tteesstt does  not  accept  any  op‐
              tions, nor does it accept and ignore an argument of ---- as signifying the end of options.

              Expressions  may be combined using the following operators, listed in decreasing order of precedence.  The evaluation depends on the number of
              arguments; see below.  Operator precedence is used when there are five or more arguments.
              !! _e_x_p_r True if _e_x_p_r is false.
              (( _e_x_p_r ))
                     Returns the value of _e_x_p_r.  This may be used to override the normal precedence of operators.
              _e_x_p_r_1 -aa _e_x_p_r_2
                     True if both _e_x_p_r_1 and _e_x_p_r_2 are true.
              _e_x_p_r_1 -oo _e_x_p_r_2
                     True if either _e_x_p_r_1 or _e_x_p_r_2 is true.

              tteesstt and [[ evaluate conditional expressions using a set of rules based on the number of arguments.

              0 arguments
                     The expression is false.
              1 argument
                     The expression is true if and only if the argument is not null.
              2 arguments
                     If the first argument is !!, the expression is true if and only if the second argument is null.  If the first argument  is  one  of  the
                     unary conditional operators listed above under CCOONNDDIITTIIOONNAALL EEXXPPRREESSSSIIOONNSS, the expression is true if the unary test is true.  If the first
                     argument is not a valid unary conditional operator, the expression is false.
              3 arguments
                     The following conditions are applied in the order listed.  If the second argument is one of the  binary  conditional  operators  listed
                     above  under CCOONNDDIITTIIOONNAALL EEXXPPRREESSSSIIOONNSS, the result of the expression is the result of the binary test using the first and third arguments
                     as operands.  The --aa and --oo operators are considered binary operators when there are three arguments.  If the first argument is !!,  the
                     value  is the negation of the two-argument test using the second and third arguments.  If the first argument is exactly (( and the third
                     argument is exactly )), the result is the one-argument test of the second argument.  Otherwise, the expression is false.
              4 arguments
                     If the first argument is !!, the result is the negation of the three-argument expression composed of the  remaining  arguments.   Other‐
                     wise, the expression is parsed and evaluated according to precedence using the rules listed above.
              5 or more arguments
                     The expression is parsed and evaluated according to precedence using the rules listed above.

              When used with tteesstt or [[, the << and >> operators sort lexicographically using ASCII ordering.

       ttiimmeess  Print the accumulated user and system times for the shell and for processes run from the shell.  The return status is 0.

       ttrraapp [--llpp] [[_a_r_g] _s_i_g_s_p_e_c ...]
              The  command _a_r_g is to be read and executed when the shell receives signal(s) _s_i_g_s_p_e_c.  If _a_r_g is absent (and there is a single _s_i_g_s_p_e_c) or --,
              each specified signal is reset to its original disposition (the value it had upon entrance to the shell).  If _a_r_g is the null string the  sig‐
              nal  specified  by  each _s_i_g_s_p_e_c is ignored by the shell and by the commands it invokes.  If _a_r_g is not present and --pp has been supplied, then
              the trap commands associated with each _s_i_g_s_p_e_c are displayed.  If no arguments are supplied or if only --pp is given, ttrraapp prints  the  list  of
              commands  associated  with each signal.  The --ll option causes the shell to print a list of signal names and their corresponding numbers.  Each
              _s_i_g_s_p_e_c is either a signal name defined in <_s_i_g_n_a_l_._h>, or a signal number.  Signal names are case insensitive and the SSIIGG prefix is optional.

              If a _s_i_g_s_p_e_c is EEXXIITT (0) the command _a_r_g is executed on exit from the shell.  If a _s_i_g_s_p_e_c is DDEEBBUUGG, the command _a_r_g is executed before  every
              _s_i_m_p_l_e  _c_o_m_m_a_n_d,  _f_o_r  command,  _c_a_s_e  command, _s_e_l_e_c_t command, every arithmetic _f_o_r command, and before the first command executes in a shell
              function (see SSHHEELLLL GGRRAAMMMMAARR above).  Refer to the description of the eexxttddeebbuugg option to the sshhoopptt builtin for details of its effect on the DDEE‐‐
              BBUUGG  trap.   If a _s_i_g_s_p_e_c is RREETTUURRNN, the command _a_r_g is executed each time a shell function or a script executed with the .. or ssoouurrccee builtins
              finishes executing.

              If a _s_i_g_s_p_e_c is EERRRR, the command _a_r_g is executed whenever a pipeline (which may consist of a single simple command), a  list,  or  a  compound
              command  returns  a  non-zero exit status, subject to the following conditions.  The EERRRR trap is not executed if the failed command is part of
              the command list immediately following a wwhhiillee or uunnttiill keyword, part of the test in an _i_f statement, part of a command executed in a &&&& or ||||
              list  except  the  command following the final &&&& or ||||, any command in a pipeline but the last, or if the command's return value is being in‐
              verted using !!.  These are the same conditions obeyed by the eerrrreexxiitt (--ee) option.

              Signals ignored upon entry to the shell cannot be trapped or reset.  Trapped signals that are not being ignored are reset  to  their  original
              values  in  a  subshell or subshell environment when one is created.  The return status is false if any _s_i_g_s_p_e_c is invalid; otherwise ttrraapp re‐
              turns true.

       ttyyppee [--aaffttppPP] _n_a_m_e [_n_a_m_e ...]
              With no options, indicate how each _n_a_m_e would be interpreted if used as a command name.  If the --tt option is used, ttyyppee prints a string  which
              is  one of _a_l_i_a_s, _k_e_y_w_o_r_d, _f_u_n_c_t_i_o_n, _b_u_i_l_t_i_n, or _f_i_l_e if _n_a_m_e is an alias, shell reserved word, function, builtin, or disk file, respectively.
              If the _n_a_m_e is not found, then nothing is printed, and an exit status of false is returned.  If the --pp option is used, ttyyppee either returns the
              name  of  the disk file that would be executed if _n_a_m_e were specified as a command name, or nothing if ``type -t name'' would not return _f_i_l_e.
              The --PP option forces a PPAATTHH search for each _n_a_m_e, even if ``type -t name'' would not return _f_i_l_e.  If a command is hashed, --pp and --PP print the
              hashed value, which is not necessarily the file that appears first in PPAATTHH.  If the --aa option is used, ttyyppee prints all of the places that con‐
              tain an executable named _n_a_m_e.  This includes aliases and functions, if and only if the --pp option is not also used.  The table of hashed  com‐
              mands  is not consulted when using --aa.  The --ff option suppresses shell function lookup, as with the ccoommmmaanndd builtin.  ttyyppee returns true if all
              of the arguments are found, false if any are not found.

       uulliimmiitt [--HHSS] --aa
       uulliimmiitt [--HHSS] [--bbccddeeffiikkllmmnnppqqrrssttuuvvxxPPRRTT [_l_i_m_i_t]]
              Provides control over the resources available to the shell and to processes started by it, on systems that allow such control.  The --HH and  --SS
              options  specify  that  the  hard or soft limit is set for the given resource.  A hard limit cannot be increased by a non-root user once it is
              set; a soft limit may be increased up to the value of the hard limit.  If neither --HH nor --SS is specified, both the soft and  hard  limits  are
              set.   The  value of _l_i_m_i_t can be a number in the unit specified for the resource or one of the special values hhaarrdd, ssoofftt, or uunnlliimmiitteedd, which
              stand for the current hard limit, the current soft limit, and no limit, respectively.  If _l_i_m_i_t is omitted, the  current  value  of  the  soft
              limit of the resource is printed, unless the --HH option is given.  When more than one resource is specified, the limit name and unit, if appro‐
              priate, are printed before the value.  Other options are interpreted as follows:
              --aa     All current limits are reported; no limits are set
              --bb     The maximum socket buffer size
              --cc     The maximum size of core files created
              --dd     The maximum size of a process's data segment
              --ee     The maximum scheduling priority ("nice")
              --ff     The maximum size of files written by the shell and its children
              --ii     The maximum number of pending signals
              --kk     The maximum number of kqueues that may be allocated
              --ll     The maximum size that may be locked into memory
              --mm     The maximum resident set size (many systems do not honor this limit)
              --nn     The maximum number of open file descriptors (most systems do not allow this value to be set)
              --pp     The pipe size in 512-byte blocks (this may not be set)
              --qq     The maximum number of bytes in POSIX message queues
              --rr     The maximum real-time scheduling priority
              --ss     The maximum stack size
              --tt     The maximum amount of cpu time in seconds
              --uu     The maximum number of processes available to a single user
              --vv     The maximum amount of virtual memory available to the shell and, on some systems, to its children
              --xx     The maximum number of file locks
              --PP     The maximum number of pseudoterminals
              --RR     The maximum time a real-time process can run before blocking, in microseconds
              --TT     The maximum number of threads

              If _l_i_m_i_t is given, and the --aa option is not used, _l_i_m_i_t is the new value of the specified resource.  If no option is given,  then  --ff  is  as‐
              sumed.   Values  are  in  1024-byte  increments,  except  for  --tt, which is in seconds; --RR, which is in microseconds; --pp, which is in units of
              512-byte blocks; --PP, --TT, --bb, --kk, --nn, and --uu, which are unscaled values; and, when in posix mode, --cc and --ff, which are in 512-byte  increments.
              The return status is 0 unless an invalid option or argument is supplied, or an error occurs while setting a new limit.

       uummaasskk [--pp] [--SS] [_m_o_d_e]
              The user file-creation mask is set to _m_o_d_e.  If _m_o_d_e begins with a digit, it is interpreted as an octal number; otherwise it is interpreted as
              a symbolic mode mask similar to that accepted by _c_h_m_o_d(1).  If _m_o_d_e is omitted, the current value of the  mask  is  printed.   The  --SS  option
              causes the mask to be printed in symbolic form; the default output is an octal number.  If the --pp option is supplied, and _m_o_d_e is omitted, the
              output is in a form that may be reused as input.  The return status is 0 if the mode was successfully changed or if no _m_o_d_e argument was  sup‐
              plied, and false otherwise.

       uunnaalliiaass [-aa] [_n_a_m_e ...]
              Remove  each  _n_a_m_e from the list of defined aliases.  If --aa is supplied, all alias definitions are removed.  The return value is true unless a
              supplied _n_a_m_e is not a defined alias.

       uunnsseett [-ffvv] [-nn] [_n_a_m_e ...]
              For each _n_a_m_e, remove the corresponding variable or function.  If the --vv option is given, each _n_a_m_e refers to a shell variable, and that vari‐
              able is removed.  Read-only variables may not be unset.  If --ff is specified, each _n_a_m_e refers to a shell function, and the function definition
              is removed.  If the --nn option is supplied, and _n_a_m_e is a variable with the _n_a_m_e_r_e_f attribute, _n_a_m_e will be unset rather than the  variable  it
              references.   --nn has no effect if the --ff option is supplied.  If no options are supplied, each _n_a_m_e refers to a variable; if there is no vari‐
              able by that name, a function with that name, if any, is unset.  Each unset variable or function is removed from  the  environment  passed  to
              subsequent commands.  If any of BBAASSHH__AALLIIAASSEESS, BBAASSHH__AARRGGVV00, BBAASSHH__CCMMDDSS, BBAASSHH__CCOOMMMMAANNDD, BBAASSHH__SSUUBBSSHHEELLLL, BBAASSHHPPIIDD, CCOOMMPP__WWOORRDDBBRREEAAKKSS, DDIIRRSSTTAACCKK, EEPPOOCCHHRREE‐‐
              AALLTTIIMMEE, EEPPOOCCHHSSEECCOONNDDSS, FFUUNNCCNNAAMMEE, GGRROOUUPPSS, HHIISSTTCCMMDD, LLIINNEENNOO, RRAANNDDOOMM, SSEECCOONNDDSS, or SSRRAANNDDOOMM are unset, they lose their special  properties,  even  if
              they are subsequently reset.  The exit status is true unless a _n_a_m_e is readonly.

       wwaaiitt [--ffnn] [--pp _v_a_r_n_a_m_e] [_i_d _._._.]
              Wait for each specified child process and return its termination status.  Each _i_d may be a process ID or a job specification; if a job spec is
              given, all processes in that job's pipeline are waited for.  If _i_d is not given, wwaaiitt waits for all running background jobs and the  last-exe‐
              cuted  process substitution, if its process id is the same as $$!!, and the return status is zero.  If the --nn option is supplied, wwaaiitt waits for
              a single job from the list of _i_ds or, if no _i_ds are supplied, any job, to complete and returns its exit status.  If none of the supplied argu‐
              ments  is a child of the shell, or if no arguments are supplied and the shell has no unwaited-for children, the exit status is 127.  If the --pp
              option is supplied, the process or job identifier of the job for which the exit status is returned is assigned to the variable  _v_a_r_n_a_m_e  named
              by  the  option  argument.   The variable will be unset initially, before any assignment.  This is useful only when the --nn option is supplied.
              Supplying the --ff option, when job control is enabled, forces wwaaiitt to wait for _i_d to terminate before returning its status, instead of  return‐
              ing  when  it  changes  status.  If _i_d specifies a non-existent process or job, the return status is 127.  Otherwise, the return status is the
              exit status of the last process or job waited for.

SSHHEELLLL CCOOMMPPAATTIIBBIILLIITTYY MMOODDEE
       Bash-4.0 introduced the concept of a `shell compatibility level', specified as a set of options to the shopt builtin  ccoommppaatt3311,  ccoommppaatt3322,  ccoommppaatt4400,
       ccoommppaatt4411,  and  so  on).  There is only one current compatibility level -- each option is mutually exclusive.  The compatibility level is intended to
       allow users to select behavior from previous versions that is incompatible with newer versions while they migrate scripts to use current features and
       behavior. It's intended to be a temporary solution.

       This  section  does  not  mention behavior that is standard for a particular version (e.g., setting ccoommppaatt3322 means that quoting the rhs of the regexp
       matching operator quotes special regexp characters in the word, which is default behavior in bash-3.2 and above).

       If a user enables, say, ccoommppaatt3322, it may affect the behavior of other compatibility levels up to and including the current compatibility level.   The
       idea is that each compatibility level controls behavior that changed in that version of bbaasshh, but that behavior may have been present in earlier ver‐
       sions.  For instance, the change to use locale-based comparisons with the [[[[ command came in bash-4.1, and earlier versions used ASCII-based  compar‐
       isons,  so enabling ccoommppaatt3322 will enable ASCII-based comparisons as well.  That granularity may not be sufficient for all uses, and as a result users
       should employ compatibility levels carefully.  Read the documentation for a particular feature to find out the current behavior.

       Bash-4.3 introduced a new shell variable: BBAASSHH__CCOOMMPPAATT.  The value assigned to this variable (a decimal version number like 4.2, or an integer  corre‐
       sponding to the ccoommppaatt_N_N option, like 42) determines the compatibility level.

       Starting with bash-4.4, Bash has begun deprecating older compatibility levels.  Eventually, the options will be removed in favor of BBAASSHH__CCOOMMPPAATT.

       Bash-5.0  is  the final version for which there will be an individual shopt option for the previous version. Users should use BBAASSHH__CCOOMMPPAATT on bash-5.0
       and later versions.

       The following table describes the behavior changes controlled by each compatibility level setting.  The ccoommppaatt_N_N tag is used as shorthand for setting
       the  compatibility  level  to _N_N using one of the following mechanisms.  For versions prior to bash-5.0, the compatibility level may be set using the
       corresponding ccoommppaatt_N_N shopt option.  For bash-4.3 and later versions, the BBAASSHH__CCOOMMPPAATT variable is preferred, and it is  required  for  bash-5.1  and
       later versions.

       ccoommppaatt3311
              •      quoting the rhs of the [[[[ command's regexp matching operator (=~) has no special effect

       ccoommppaatt3322
              •      interrupting  a  command list such as "a ; b ; c" causes the execution of the next command in the list (in bash-4.0 and later versions,
                     the shell acts as if it received the interrupt, so interrupting one command in a list aborts the execution of the entire list)

       ccoommppaatt4400
              •      the << and >> operators to the [[[[ command do not consider the current locale when comparing strings; they use ASCII ordering.  Bash  ver‐
                     sions  prior  to  bash-4.1  use  ASCII collation and _s_t_r_c_m_p(3); bash-4.1 and later use the current locale's collation sequence and _s_t_r_‐
                     _c_o_l_l(3).

       ccoommppaatt4411
              •      in _p_o_s_i_x mode, ttiimmee may be followed by options and still be recognized as a reserved word (this is POSIX interpretation 267)
              •      in _p_o_s_i_x mode, the parser requires that an even number of single quotes occur in the _w_o_r_d portion of a double-quoted  parameter  expan‐
                     sion and treats them specially, so that characters within the single quotes are considered quoted (this is POSIX interpretation 221)

       ccoommppaatt4422
              •      the replacement string in double-quoted pattern substitution does not undergo quote removal, as it does in versions after bash-4.2
              •      in  posix  mode, single quotes are considered special when expanding the _w_o_r_d portion of a double-quoted parameter expansion and can be
                     used to quote a closing brace or other special character (this is part of POSIX interpretation 221); in later versions,  single  quotes
                     are not special within double-quoted word expansions

       ccoommppaatt4433
              •      the shell does not print a warning message if an attempt is made to use a quoted compound assignment as an argument to declare (declare
                     -a foo='(1 2)'). Later versions warn that this usage is deprecated
              •      word expansion errors are considered non-fatal errors that cause the current command to fail, even in posix mode (the default  behavior
                     is to make them fatal errors that cause the shell to exit)
              •      when  executing  a shell function, the loop state (while/until/etc.)  is not reset, so bbrreeaakk or ccoonnttiinnuuee in that function will break or
                     continue loops in the calling context. Bash-4.4 and later reset the loop state to prevent this

       ccoommppaatt4444
              •      the shell sets up the values used by BBAASSHH__AARRGGVV and BBAASSHH__AARRGGCC so they can expand to the shell's positional parameters even  if  extended
                     debugging mode is not enabled
              •      a  subshell inherits loops from its parent context, so bbrreeaakk or ccoonnttiinnuuee will cause the subshell to exit.  Bash-5.0 and later reset the
                     loop state to prevent the exit
              •      variable assignments preceding builtins like eexxppoorrtt and rreeaaddoonnllyy that set attributes continue to affect variables with the same name in
                     the calling environment even if the shell is not in posix mode

       ccoommppaatt5500
              •      Bash-5.1  changed  the way $$RRAANNDDOOMM is generated to introduce slightly more randomness. If the shell compatibility level is set to 50 or
                     lower, it reverts to the method from bash-5.0 and previous versions, so seeding the random number generator by  assigning  a  value  to
                     RRAANNDDOOMM will produce the same sequence as in bash-5.0
              •      If  the command hash table is empty, bash versions prior to bash-5.1 printed an informational message to that effect, even when produc‐
                     ing output that can be reused as input. Bash-5.1 suppresses that message when the --ll option is supplied.

RREESSTTRRIICCTTEEDD SSHHEELLLL
       If bbaasshh is started with the name rrbbaasshh, or the --rr option is supplied at invocation, the shell becomes restricted.  A restricted shell is used to  set
       up  an  environment  more controlled than the standard shell.  It behaves identically to bbaasshh with the exception that the following are disallowed or
       not performed:

       •      changing directories with ccdd

       •      setting or unsetting the values of SSHHEELLLL, PPAATTHH, HHIISSTTFFIILLEE, EENNVV, or BBAASSHH__EENNVV

       •      specifying command names containing //

       •      specifying a filename containing a // as an argument to the ..  builtin command

       •      specifying a filename containing a slash as an argument to the hhiissttoorryy builtin command

       •      specifying a filename containing a slash as an argument to the --pp option to the hhaasshh builtin command

       •      importing function definitions from the shell environment at startup

       •      parsing the value of SSHHEELLLLOOPPTTSS from the shell environment at startup

       •      redirecting output using the >, >|, <>, >&, &>, and >> redirection operators

       •      using the eexxeecc builtin command to replace the shell with another command

       •      adding or deleting builtin commands with the --ff and --dd options to the eennaabbllee builtin command

       •      using the eennaabbllee builtin command to enable disabled shell builtins

       •      specifying the --pp option to the ccoommmmaanndd builtin command

       •      turning off restricted mode with sseett ++rr or sseett ++oo rreessttrriicctteedd.

       These restrictions are enforced after any startup files are read.

       When a command that is found to be a shell script is executed (see CCOOMMMMAANNDD EEXXEECCUUTTIIOONN above), rrbbaasshh turns off any restrictions in the shell spawned to
       execute the script.

SSEEEE AALLSSOO
       _B_a_s_h _R_e_f_e_r_e_n_c_e _M_a_n_u_a_l, Brian Fox and Chet Ramey
       _T_h_e _G_n_u _R_e_a_d_l_i_n_e _L_i_b_r_a_r_y, Brian Fox and Chet Ramey
       _T_h_e _G_n_u _H_i_s_t_o_r_y _L_i_b_r_a_r_y, Brian Fox and Chet Ramey
       _P_o_r_t_a_b_l_e _O_p_e_r_a_t_i_n_g _S_y_s_t_e_m _I_n_t_e_r_f_a_c_e _(_P_O_S_I_X_) _P_a_r_t _2_: _S_h_e_l_l _a_n_d _U_t_i_l_i_t_i_e_s, IEEE --
              http://pubs.opengroup.org/onlinepubs/9699919799/
       http://tiswww.case.edu/~chet/bash/POSIX -- a description of posix mode
       _s_h(1), _k_s_h(1), _c_s_h(1)
       _e_m_a_c_s(1), _v_i(1)
       _r_e_a_d_l_i_n_e(3)

FFIILLEESS
       _/_b_i_n_/_b_a_s_h
              The bbaasshh executable
       _/_e_t_c_/_p_r_o_f_i_l_e
              The systemwide initialization file, executed for login shells
       _~_/_._b_a_s_h___p_r_o_f_i_l_e
              The personal initialization file, executed for login shells
       _~_/_._b_a_s_h_r_c
              The individual per-interactive-shell startup file
       _~_/_._b_a_s_h___l_o_g_o_u_t
              The individual login shell cleanup file, executed when a login shell exits
       _~_/_._i_n_p_u_t_r_c
              Individual _r_e_a_d_l_i_n_e initialization file

AAUUTTHHOORRSS
       Brian Fox, Free Software Foundation
       bfox@gnu.org

       Chet Ramey, Case Western Reserve University
       chet.ramey@case.edu

BBUUGG RREEPPOORRTTSS
       If  you find a bug in bbaasshh,, you should report it.  But first, you should make sure that it really is a bug, and that it appears in the latest version
       of bbaasshh.  The latest version is always available from _f_t_p_:_/_/_f_t_p_._g_n_u_._o_r_g_/_p_u_b_/_g_n_u_/_b_a_s_h_/.

       Once you have determined that a bug actually exists, use the _b_a_s_h_b_u_g command to submit a bug report.  If you have a fix, you are encouraged  to  mail
       that as well!  Suggestions and `philosophical' bug reports may be mailed to _b_u_g_-_b_a_s_h_@_g_n_u_._o_r_g or posted to the Usenet newsgroup ggnnuu..bbaasshh..bbuugg.

       ALL bug reports should include:

       The version number of bbaasshh
       The hardware and operating system
       The compiler used to compile
       A description of the bug behaviour
       A short script or `recipe' which exercises the bug

       _b_a_s_h_b_u_g inserts the first three items automatically into the template it provides for filing a bug report.

       Comments and bug reports concerning this manual page should be directed to _c_h_e_t_._r_a_m_e_y_@_c_a_s_e_._e_d_u.

BBUUGGSS
       It's too big and too slow.

       There are some subtle differences between bbaasshh and traditional versions of sshh, mostly because of the PPOOSSIIXX specification.

       Aliases are confusing in some uses.

       Shell builtin commands and functions are not stoppable/restartable.

       Compound  commands  and command sequences of the form `a ; b ; c' are not handled gracefully when process suspension is attempted.  When a process is
       stopped, the shell immediately executes the next command in the sequence.  It suffices to place the sequence of commands between parentheses to force
       it into a subshell, which may be stopped as a unit.

       Array variables may not (yet) be exported.

       There may be only one active coprocess at a time.

GNU Bash 5.1                                                           2020 October 29                                                               BASH(1)
