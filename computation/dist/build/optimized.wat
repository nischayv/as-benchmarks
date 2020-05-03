(module
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $none_=>_f64 (func (result f64)))
 (type $f64_=>_f64 (func (param f64) (result f64)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_=>_f64 (func (param i32) (result f64)))
 (type $i32_i32_i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32 i32 i32)))
 (type $i32_f64_=>_none (func (param i32 f64)))
 (type $i32_i32_i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32 i32 i32) (result i32)))
 (type $i64_=>_i32 (func (param i64) (result i32)))
 (type $f64_f64_=>_i32 (func (param f64 f64) (result i32)))
 (type $i32_i32_=>_f64 (func (param i32 i32) (result f64)))
 (type $i32_i32_i32_=>_f64 (func (param i32 i32 i32) (result f64)))
 (type $f64_f64_=>_f64 (func (param f64 f64) (result f64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "common" "performanceNow" (func $assembly/common/performanceNow (result f64)))
 (memory $0 1)
 (data (i32.const 1024) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 1088) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 1136) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 1184) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00s\00t\00a\00t\00i\00c\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1249) "\08\00\00\01\00\00\00\05\00\00\00\00\08")
 (data (i32.const 1278) "\f0?n\bf\88\1aO;\9b<53\fb\a9=\f6\ef?]\dc\d8\9c\13`q\bca\80w>\9a\ec\ef?\d1f\87\10z^\90\bc\85\7fn\e8\15\e3\ef?\13\f6g5R\d2\8c<t\85\15\d3\b0\d9\ef?\fa\8e\f9#\80\ce\8b\bc\de\f6\dd)k\d0\ef?a\c8\e6aN\f7`<\c8\9bu\18E\c7\ef?\99\d33[\e4\a3\90<\83\f3\c6\ca>\be\ef?m{\83]\a6\9a\97<\0f\89\f9lX\b5\ef?\fc\ef\fd\92\1a\b5\8e<\f7Gr+\92\ac\ef?\d1\9c/p=\be><\a2\d1\d32\ec\a3\ef?\0bn\90\894\03j\bc\1b\d3\fe\aff\9b\ef?\0e\bd/*RV\95\bcQ[\12\d0\01\93\ef?U\eaN\8c\ef\80P\bc\cc1l\c0\bd\8a\ef?\16\f4\d5\b9#\c9\91\bc\e0-\a9\ae\9a\82\ef?\afU\\\e9\e3\d3\80<Q\8e\a5\c8\98z\ef?H\93\a5\ea\15\1b\80\bc{Q}<\b8r\ef?=2\deU\f0\1f\8f\bc\ea\8d\8c8\f9j\ef?\bfS\13?\8c\89\8b<u\cbo\eb[c\ef?&\eb\11v\9c\d9\96\bc\d4\\\04\84\e0[\ef?`/:>\f7\ec\9a<\aa\b9h1\87T\ef?\9d8\86\cb\82\e7\8f\bc\1d\d9\fc\"PM\ef?\8d\c3\a6DAo\8a<\d6\8cb\88;F\ef?}\04\e4\b0\05z\80<\96\dc}\91I?\ef?\94\a8\a8\e3\fd\8e\96<8bunz8\ef?}Ht\f2\18^\87<?\a6\b2O\ce1\ef?\f2\e7\1f\98+G\80<\dd|\e2eE+\ef?^\08q?{\b8\96\bc\81c\f5\e1\df$\ef?1\ab\tm\e1\f7\82<\e1\de\1f\f5\9d\1e\ef?\fa\bfo\1a\9b!=\bc\90\d9\da\d0\7f\18\ef?\b4\n\0cr\827\8b<\0b\03\e4\a6\85\12\ef?\8f\cb\ce\89\92\14n<V/>\a9\af\0c\ef?\b6\ab\b0MuM\83<\15\b71\n\fe\06\ef?Lt\ac\e2\01B\86<1\d8L\fcp\01\ef?J\f8\d3]9\dd\8f<\ff\16d\b2\08\fc\ee?\04[\8e;\80\a3\86\bc\f1\9f\92_\c5\f6\ee?hPK\cc\edJ\92\bc\cb\a9:7\a7\f1\ee?\8e-Q\1b\f8\07\99\bcf\d8\05m\ae\ec\ee?\d26\94>\e8\d1q\bc\f7\9f\e54\db\e7\ee?\15\1b\ce\b3\19\19\99\bc\e5\a8\13\c3-\e3\ee?mL*\a7H\9f\85<\"4\12L\a6\de\ee?\8ai(z`\12\93\bc\1c\80\ac\04E\da\ee?[\89\17H\8f\a7X\bc*.\f7!\n\d6\ee?\1b\9aIg\9b,|\bc\97\a8P\d9\f5\d1\ee?\11\ac\c2`\edcC<-\89a`\08\ce\ee?\efd\06;\tf\96<W\00\1d\edA\ca\ee?y\03\a1\da\e1\ccn<\d0<\c1\b5\a2\c6\ee?0\12\0f?\8e\ff\93<\de\d3\d7\f0*\c3\ee?\b0\afz\bb\ce\90v<\'*6\d5\da\bf\ee?w\e0T\eb\bd\1d\93<\0d\dd\fd\99\b2\bc\ee?\8e\a3q\004\94\8f\bc\a7,\9dv\b2\b9\ee?I\a3\93\dc\cc\de\87\bcBf\cf\a2\da\b6\ee?_8\0f\bd\c6\dex\bc\82O\9dV+\b4\ee?\f6\\{\ecF\12\86\bc\0f\92]\ca\a4\b1\ee?\8e\d7\fd\18\055\93<\da\'\b56G\af\ee?\05\9b\8a/\b7\98{<\fd\c7\97\d4\12\ad\ee?\tT\1c\e2\e1c\90<)TH\dd\07\ab\ee?\ea\c6\19P\85\c74<\b7FY\8a&\a9\ee?5\c0d+\e62\94<H!\ad\15o\a7\ee?\9fv\99aJ\e4\8c\bc\t\dcv\b9\e1\a5\ee?\a8M\ef;\c53\8c\bc\85U:\b0~\a4\ee?\ae\e9+\89xS\84\bc \c3\cc4F\a3\ee?XXVx\dd\ce\93\bc%\"U\828\a2\ee?d\19~\80\aa\10W<s\a9L\d4U\a1\ee?(\"^\bf\ef\b3\93\bc\cd;\7ff\9e\a0\ee?\82\b94\87\ad\12j\bc\bf\da\0bu\12\a0\ee?\ee\a9m\b8\efgc\bc/\1ae<\b2\9f\ee?Q\88\e0T=\dc\80\bc\84\94Q\f9}\9f\ee?\cf>Z~d\1fx\bct_\ec\e8u\9f\ee?\b0}\8b\c0J\ee\86\bct\81\a5H\9a\9f\ee?\8a\e6U\1e2\19\86\bc\c9gBV\eb\9f\ee?\d3\d4\t^\cb\9c\90<?]\deOi\a0\ee?\1d\a5M\b9\dc2{\bc\87\01\ebs\14\a1\ee?k\c0gT\fd\ec\94<2\c10\01\ed\a1\ee?Ul\d6\ab\e1\ebe<bN\cf6\f3\a2\ee?B\cf\b3/\c5\a1\88\bc\12\1a>T\'\a4\ee?47;\f1\b6i\93\bc\13\ceL\99\89\a5\ee?\1e\ff\19:\84^\80\bc\ad\c7#F\1a\a7\ee?nWr\d8P\d4\94\bc\ed\92D\9b\d9\a8\ee?\00\8a\0e[g\ad\90<\99f\8a\d9\c7\aa\ee?\b4\ea\f0\c1/\b7\8d<\db\a0*B\e5\ac\ee?\ff\e7\c5\9c`\b6e\bc\8cD\b5\162\af\ee?D_\f3Y\83\f6{<6w\15\99\ae\b1\ee?\83=\1e\a7\1f\t\93\bc\c6\ff\91\0b[\b4\ee?)\1el\8b\b8\a9]\bc\e5\c5\cd\b07\b7\ee?Y\b9\90|\f9#l\bc\0fR\c8\cbD\ba\ee?\aa\f9\f4\"CC\92\bcPN\de\9f\82\bd\ee?K\8ef\d7l\ca\85\bc\ba\07\cap\f1\c0\ee?\'\ce\91+\fc\afq<\90\f0\a3\82\91\c4\ee?\bbs\n\e15\d2m<##\e3\19c\c8\ee?c\"b\"\04\c5\87\bce\e5]{f\cc\ee?\d51\e2\e3\86\1c\8b<3-J\ec\9b\d0\ee?\15\bb\bc\d3\d1\bb\91\bc]%>\b2\03\d5\ee?\d21\ee\9c1\cc\90<X\b30\13\9e\d9\ee?\b3Zsn\84i\84<\bf\fdyUk\de\ee?\b4\9d\8e\97\cd\df\82\bcz\f3\d3\bfk\e3\ee?\873\cb\92w\1a\8c<\ad\d3Z\99\9f\e8\ee?\fa\d9\d1J\8f{\90\bcf\b6\8d)\07\ee\ee?\ba\ae\dcV\d9\c3U\bc\fb\15O\b8\a2\f3\ee?@\f6\a6=\0e\a4\90\bc:Y\e5\8dr\f9\ee?4\93\ad8\f4\d6h\bcG^\fb\f2v\ff\ee?5\8aXk\e2\ee\91\bcJ\06\a10\b0\05\ef?\cd\dd_\n\d7\fft<\d2\c1K\90\1e\0c\ef?\ac\98\92\fa\fb\bd\91\bc\t\1e\d7[\c2\12\ef?\b3\0c\af0\aens<\9cR\85\dd\9b\19\ef?\94\fd\9f\\2\e3\8e<z\d0\ff_\ab \ef?\acY\t\d1\8f\e0\84<K\d1W.\f1\'\ef?g\1aN8\af\cdc<\b5\e7\06\94m/\ef?h\19\92l,kg<i\90\ef\dc 7\ef?\d2\b5\cc\83\18\8a\80\bc\fa\c3]U\0b?\ef?o\fa\ff?]\ad\8f\bc|\89\07J-G\ef?I\a9u8\ae\0d\90\bc\f2\89\0d\08\87O\ef?\a7\07=\a6\85\a3t<\87\a4\fb\dc\18X\ef?\0f\"@ \9e\91\82\bc\98\83\c9\16\e3`\ef?\ac\92\c1\d5PZ\8e<\852\db\03\e6i\ef?Kk\01\acY:\84<`\b4\01\f3!s\ef?\1f>\b4\07!\d5\82\bc_\9b{3\97|\ef?\c9\0dG;\b9*\89\bc)\a1\f5\14F\86\ef?\d3\88:`\04\b6t<\f6?\8b\e7.\90\ef?qr\9dQ\ec\c5\83<\83L\c7\fbQ\9a\ef?\f0\91\d3\8f\12\f7\8f\bc\da\90\a4\a2\af\a4\ef?}t#\e2\98\ae\8d\bc\f1g\8e-H\af\ef?\08 \aaA\bc\c3\8e<\'Za\ee\1b\ba\ef?2\eb\a9\c3\94+\84<\97\bak7+\c5\ef?\ee\85\d11\a9d\8a<@En[v\d0\ef?\ed\e3;\e4\ba7\8e\bc\14\be\9c\ad\fd\db\ef?\9d\cd\91M;\89w<\d8\90\9e\81\c1\e7\ef?\89\cc`A\c1\05S<\f1q\8f+\c2\f3\ef?")
 (data (i32.const 3313) "\08\00\00\01\00\00\00\03\00\00\00\00\08\00\00\9f\de\e0\c3\f04\f7?\00\90\e6y\7f\cc\d7\bf\1f\e9,jx\13\f7?\00\00\0d\c2\eeo\d7\bf\a0\b5\fa\08`\f2\f6?\00\e0Q\13\e3\13\d7\bf}\8c\13\1f\a6\d1\f6?\00x(8[\b8\d6\bf\d1\b4\c5\0bI\b1\f6?\00x\80\90U]\d6\bf\ba\0c/3G\91\f6?\00\00\18v\d0\02\d6\bf#B\"\18\9fq\f6?\00\90\90\86\ca\a8\d5\bf\d9\1e\a5\99OR\f6?\00P\03VCO\d5\bf\c4$\8f\aaV3\f6?\00@k\c37\f6\d4\bf\14\dc\9dk\b3\14\f6?\00P\a8\fd\a7\9d\d4\bfL\\\c6Rd\f6\f5?\00\a8\899\92E\d4\bfO,\91\b5g\d8\f5?\00\b8\b09\f4\ed\d3\bf\de\90[\cb\bc\ba\f5?\00p\8fD\ce\96\d3\bfx\1a\d9\f2a\9d\f5?\00\a0\bd\17\1e@\d3\bf\87VF\12V\80\f5?\00\80F\ef\e2\e9\d2\bf\d3k\e7\ce\97c\f5?\00\e008\1b\94\d2\bf\93\7f\a7\e2%G\f5?\00\88\da\8c\c5>\d2\bf\83E\06B\ff*\f5?\00\90\')\e1\e9\d1\bf\df\bd\b2\db\"\0f\f5?\00\f8H+m\95\d1\bf\d7\de4G\8f\f3\f4?\00\f8\b9\9agA\d1\bf@(\de\cfC\d8\f4?\00\98\ef\94\d0\ed\d0\bf\c8\a3x\c0>\bd\f4?\00\10\db\18\a5\9a\d0\bf\8a%\e0\c3\7f\a2\f4?\00\b8cR\e6G\d0\bf4\84\d4$\05\88\f4?\00\f0\86E\"\eb\cf\bf\0b-\19\1b\cem\f4?\00\b0\17uJG\cf\bfT\189\d3\d9S\f4?\000\10=D\a4\ce\bfZ\84\b4D\':\f4?\00\b0\e9D\0d\02\ce\bf\fb\f8\15A\b5 \f4?\00\f0w)\a2`\cd\bf\b1\f4>\da\82\07\f4?\00\90\95\04\01\c0\cc\bf\8f\feW]\8f\ee\f3?\00\10\89V) \cc\bf\e9L\0b\a0\d9\d5\f3?\00\10\81\8d\17\81\cb\bf+\c1\10\c0`\bd\f3?\00\d0\d3\cc\c9\e2\ca\bf\b8\dau+$\a5\f3?\00\90\12.@E\ca\bf\02\d0\9f\cd\"\8d\f3?\00\f0\1dhw\a8\c9\bf\1cz\84\c5[u\f3?\000Him\0c\c9\bf\e26\adI\ce]\f3?\00\c0E\a6 q\c8\bf@\d4M\98yF\f3?\000\14\b4\8f\d6\c7\bf$\cb\ff\ce\\/\f3?\00pb<\b8<\c7\bfI\0d\a1uw\18\f3?\00`7\9b\9a\a3\c6\bf\909>7\c8\01\f3?\00\a0\b7T1\0b\c6\bfA\f8\95\bbN\eb\f2?\000$v}s\c5\bf\d1\a9\19\02\n\d5\f2?\000\c2\8f{\dc\c4\bf*\fd\b7\a8\f9\be\f2?\00\00\d2Q,F\c4\bf\ab\1b\0cz\1c\a9\f2?\00\00\83\bc\8a\b0\c3\bf0\b5\14`r\93\f2?\00\00Ik\99\1b\c3\bf\f5\a1WW\fa}\f2?\00@\a4\90T\87\c2\bf\bf;\1d\9b\b3h\f2?\00\a0y\f8\b9\f3\c1\bf\bd\f5\8f\83\9dS\f2?\00\a0,%\c8`\c1\bf;\08\c9\aa\b7>\f2?\00 \f7W\7f\ce\c0\bf\b6@\a9+\01*\f2?\00\a0\feI\dc<\c0\bf2A\cc\96y\15\f2?\00\80K\bc\bdW\bf\bf\9b\fc\d2\1d \01\f2?\00@@\96\087\be\bf\0bHMI\f4\ec\f1?\00@\f9>\98\17\bd\bfie\8fR\f5\d8\f1?\00\a0\d8Ng\f9\bb\bf|~W\11#\c5\f1?\00`/ y\dc\ba\bf\e9&\cbt|\b1\f1?\00\80(\e7\c3\c0\b9\bf\b6\1a,\0c\01\9e\f1?\00\c0r\b3F\a6\b8\bf\bdp\b6{\b0\8a\f1?\00\00\ac\b3\01\8d\b7\bf\b6\bc\ef%\8aw\f1?\00\008E\f1t\b6\bf\da1L5\8dd\f1?\00\80\87m\0e^\b5\bf\dd_\'\90\b9Q\f1?\00\e0\a1\de\\H\b4\bfL\d22\a4\0e?\f1?\00\a0jM\d93\b3\bf\da\f9\10r\8b,\f1?\00`\c5\f8y \b2\bf1\b5\ec(0\1a\f1?\00 b\98F\0e\b1\bf\af4\84\da\fb\07\f1?\00\00\d2jl\fa\af\bf\b3kN\0f\ee\f5\f0?\00@wJ\8d\da\ad\bf\ce\9f*]\06\e4\f0?\00\00\85\e4\ec\bc\ab\bf!\a5,cD\d2\f0?\00\c0\12@\89\a1\a9\bf\1a\98\e2|\a7\c0\f0?\00\c0\023X\88\a7\bf\d16\c6\83/\af\f0?\00\80\d6g^q\a5\bf9\13\a0\98\db\9d\f0?\00\80eI\8a\\\a3\bf\df\e7R\af\ab\8c\f0?\00@\15d\e3I\a1\bf\fb(N/\9f{\f0?\00\80\eb\82\c0r\9e\bf\19\8f5\8c\b5j\f0?\00\80RR\f1U\9a\bf,\f9\ec\a5\eeY\f0?\00\80\81\cfb=\96\bf\90,\d1\cdII\f0?\00\00\aa\8c\fb(\92\bf\a9\ad\f0\c6\c68\f0?\00\00\f9 {1\8c\bf\a92y\13e(\f0?\00\00\aa]5\19\84\bfHs\ea\'$\18\f0?\00\00\ec\c2\03\12x\bf\95\b1\14\06\04\08\f0?\00\00$y\t\04`\bf\1a\fa&\f7\1f\e0\ef?\00\00\90\84\f3\efo?t\eaa\c2\1c\a1\ef?\00\00=5A\dc\87?.\99\81\b0\10c\ef?\00\80\c2\c4\a3\ce\93?\cd\ad\ee<\f6%\ef?\00\00\89\14\c1\9f\9b?\e7\13\91\03\c8\e9\ee?\00\00\11\ce\d8\b0\a1?\ab\b1\cbx\80\ae\ee?\00\c0\01\d0[\8a\a5?\9b\0c\9d\a2\1at\ee?\00\80\d8@\83\\\a9?\b5\99\n\83\91:\ee?\00\80W\efj\'\ad?V\9a`\t\e0\01\ee?\00\c0\98\e5\98u\b0?\98\bbw\e5\01\ca\ed?\00 \0d\e3\f5S\b2?\03\91|\0b\f2\92\ed?\00\008\8b\dd.\b4?\ce\\\fbf\ac\\\ed?\00\c0W\87Y\06\b6?\9d\de^\aa,\'\ed?\00\00j5v\da\b7?\cd,k>n\f2\ec?\00`\1cNC\ab\b9?\02y\a7\a2m\be\ec?\00`\0d\bb\c7x\bb?m\087m&\8b\ec?\00 \e72\13C\bd?\04X]\bd\94X\ec?\00`\deq1\n\bf?\8c\9f\bb3\b5&\ec?\00@\91+\15g\c0??\e7\ec\ee\83\f5\eb?\00\b0\92\82\85G\c1?\c1\96\dbu\fd\c4\eb?\000\ca\cdn&\c2?(J\86\0c\1e\95\eb?\00P\c5\a6\d7\03\c3?,>\ef\c5\e2e\eb?\00\103<\c3\df\c3?\8b\88\c9gH7\eb?\00\80zk6\ba\c4?J0\1d!K\t\eb?\00\f0\d1(9\93\c5?~\ef\f2\85\e8\db\ea?\00\f0\18$\cdj\c6?\a2=`1\1d\af\ea?\00\90f\ec\f8@\c7?\a7X\d3?\e6\82\ea?\00\f0\1a\f5\c0\15\c8?\8bs\t\ef@W\ea?\00\80\f6T)\e9\c8?\'K\ab\90*,\ea?\00@\f8\026\bb\c9?\d1\f2\93\13\a0\01\ea?\00\00,\1c\ed\8b\ca?\1b<\db$\9f\d7\e9?\00\d0\01\\Q[\cb?\90\b1\c7\05%\ae\e9?\00\c0\bc\ccg)\cc?/\ce\97\f2.\85\e9?\00`H\d55\f6\cc?uK\a4\ee\ba\\\e9?\00\c0F4\bd\c1\cd?8H\e7\9d\c64\e9?\00\e0\cf\b8\01\8c\ce?\e6Rg/O\0d\e9?\00\90\17\c0\tU\cf?\9d\d7\ff\8eR\e6\e8?\00\b8\1f\12l\0e\d0?|\00\cc\9f\ce\bf\e8?\00\d0\93\0e\b8q\d0?\0e\c3\be\da\c0\99\e8?\00p\86\9ek\d4\d0?\fb\17#\aa\'t\e8?\00\d0K3\876\d1?\08\9a\b3\ac\00O\e8?\00H#g\0d\98\d1?U>e\e8I*\e8?\00\80\cc\e0\ff\f8\d1?`\02\f4\95\01\06\e8?\00hc\d7_Y\d2?)\a3\e0c%\e2\e7?\00\a8\14\t0\b9\d2?\ad\b5\dcw\b3\be\e7?\00`C\10r\18\d3?\c2%\97g\aa\9b\e7?\00\18\ecm&w\d3?W\06\17\f2\07y\e7?\000\af\fbO\d5\d3?\0c\13\d6\db\caV\e7?\00\e0/\e3\ee2\d4?")
 (data (i32.const 5377) "\08\00\00\01\00\00\00\03\00\00\00\00\08\00\00k\b6O\01\00\10\e6?<[B\91l\02~<\95\b4M\03\000\e6?A]\00H\ea\bf\8d<x\d4\94\0d\00P\e6?\b7\a5\d6\86\a7\7f\8e<\adoN\07\00p\e6?L%Tk\ea\fca<\ae\0f\df\fe\ff\8f\e6?\fd\0eYL\'~|\bc\bc\c5c\07\00\b0\e6?\01\da\dcHh\c1\8a\bc\f6\c1\\\1e\00\d0\e6?\11\93I\9d\1c?\83<>\f6\05\eb\ff\ef\e6?S-\e2\1a\04\80~\bc\80\97\86\0e\00\10\e7?Ry\tqf\ff{<\12\e9g\fc\ff/\e7?$\87\bd&\e2\00\8c<j\11\81\df\ffO\e7?\d2\01\f1n\91\02n\bc\90\9cg\0f\00p\e7?t\9cT\cdq\fcg\bc5\c8~\fa\ff\8f\e7?\83\04\f5\9e\c1\be\81<\e6\c2 \fe\ff\af\e7?ed\cc)\17~p\bc\00\c9?\ed\ff\cf\e7?\1c\8b{\08r\80\80\bcv\1a&\e9\ff\ef\e7?\ae\f9\9dm(\c0\8d<\e8\a3\9c\04\00\10\e8?3L\e5Q\d2\7f\89<\8f,\93\17\000\e8?\81\f30\b6\e9\fe\8a\bc\9cs3\06\00P\e8?\bc5ek\bf\bf\89<\c6\89B \00p\e8?u{\11\f3e\bf\8b\bc\04y\f5\eb\ff\8f\e8?W\cb=\a2n\00\89\bc\df\04\bc\"\00\b0\e8?\nK\e08\df\00}\bc\8a\1b\0c\e5\ff\cf\e8?\05\9f\ffFq\00\88\bcC\8e\91\fc\ff\ef\e8?8pz\d0{\81\83<\c7_\fa\1e\00\10\e9?\03\b4\dfv\91>\89<\b9{F\13\000\e9?v\02\98KN\80\7f<o\07\ee\e6\ffO\e9?.b\ff\d9\f0~\8f\bc\d1\12<\de\ffo\e9?\ba8&\96\aa\82p\bc\0d\8aE\f4\ff\8f\e9?\ef\a8d\91\1b\80\87\bc>.\98\dd\ff\af\e9?7\93Z\8a\e0@\87\bcf\fbI\ed\ff\cf\e9?\00\e0\9b\c1\08\ce?<Q\9c\f1 \00\f0\e9?\n[\88\'\aa?\8a\bc\06\b0E\11\00\10\ea?V\daX\99H\fft<\fa\f6\bb\07\000\ea?\18m+\8a\ab\be\8c<y\1d\97\10\00P\ea?0yx\dd\ca\fe\88<H.\f5\1d\00p\ea?\db\ab\d8=vA\8f\bcR3Y\1c\00\90\ea?\12v\c2\84\02\bf\8e\bcK>O*\00\b0\ea?_?\ff<\04\fdi\bc\d1\1e\ae\d7\ff\cf\ea?\b4p\90\12\e7>\82\bcx\04Q\ee\ff\ef\ea?\a3\de\0e\e0>\06j<[\0de\db\ff\0f\eb?\b9\n\1f8\c8\06Z<W\ca\aa\fe\ff/\eb?\1d<#t\1e\01y\bc\dc\ba\95\d9\ffO\eb?\9f*\86h\10\ffy\bc\9ce\9e$\00p\eb?>O\86\d0E\ff\8a<@\16\87\f9\ff\8f\eb?\f9\c3\c2\96w\fe|<O\cb\04\d2\ff\af\eb?\c4+\f2\ee\'\ffc\bcE\\A\d2\ff\cf\eb?!\ea;\ee\b7\ffl\bc\df\tc\f8\ff\ef\eb?\\\0b.\97\03A\81\bcSv\b5\e1\ff\0f\ec?\19j\b7\94d\c1\8b<\e3W\fa\f1\ff/\ec?\ed\c60\8d\ef\fed\bc$\e4\bf\dc\ffO\ec?uG\ec\bch?\84\bc\f7\b9T\ed\ffo\ec?\ec\e0S\f0\a3~\84<\d5\8f\99\eb\ff\8f\ec?\f1\92\f9\8d\06\83s<\9a!%!\00\b0\ec?\04\0e\18d\8e\fdh\bc\9cF\94\dd\ff\cf\ec?r\ea\c7\1c\be~\8e<v\c4\fd\ea\ff\ef\ec?\fe\88\9f\ad9\be\8e<+\f8\9a\16\00\10\ed?qZ\b9\a8\91}u<\1d\f7\0f\0d\000\ed?\da\c7pi\90\c1\89<\c4\0fy\ea\ffO\ed?\0c\feX\c57\0eX\bc\e5\87\dc.\00p\ed?D\0f\c1M\d6\80\7f\bc\aa\82\dc!\00\90\ed?\\\\\fd\94\8f|t\bc\83\02k\d8\ff\af\ed?~a!\c5\1d\7f\8c<9Gl)\00\d0\ed?S\b1\ff\b2\9e\01\88<\f5\90D\e5\ff\ef\ed?\89\ccR\c6\d2\00n<\94\f6\ab\cd\ff\0f\ee?\d2i- @\83\7f\bc\dd\c8R\db\ff/\ee?d\08\1b\ca\c1\00{<\ef\16B\f2\ffO\ee?Q\ab\94\b0\a8\ffr<\11^\8a\e8\ffo\ee?Y\be\ef\b1s\f6W\bc\0d\ff\9e\11\00\90\ee?\01\c8\0b^\8d\80\84\bcD\17\a5\df\ff\af\ee?\b5 C\d5\06\00x<\a1\7f\12\1a\00\d0\ee?\92\\V`\f8\02P\bc\c4\bc\ba\07\00\f0\ee?\11\e65]D@\85\bc\02\8dz\f5\ff\0f\ef?\05\91\ef91\fbO\bc\c7\8a\e5\1e\000\ef?U\11s\f2\ac\81\8a<\944\82\f5\ffO\ef?C\c7\d7\d4A?\8a<kL\a9\fc\ffo\ef?ux\98\1c\f4\02b\bcA\c4\f9\e1\ff\8f\ef?K\e7w\f4\d1}w<~\e3\e0\d2\ff\af\ef?1\a3|\9a\19\01o\bc\9e\e4w\1c\00\d0\ef?\b1\ac\ceK\ee\81q<1\c3\e0\f7\ff\ef\ef?Z\87p\017\05n\bcn`e\f4\ff\0f\f0?\da\n\1cI\ad~\8a\bcXz\86\f3\ff/\f0?\e0\b2\fc\c3i\7f\97\bc\17\0d\fc\fd\ffO\f0?[\94\cb4\fe\bf\97<\82M\cd\03\00p\f0?\cbV\e4\c0\83\00\82<\e8\cb\f2\f9\ff\8f\f0?\1au7\be\df\ffm\bce\da\0c\01\00\b0\f0?\eb&\e6\ae\7f?\91\bc8\d3\a4\01\00\d0\f0?\f7\9fHy\fa}\80<\fd\fd\da\fa\ff\ef\f0?\c0k\d6p\05\04w\bc\96\fd\ba\0b\00\10\f1?b\0bm\84\d4\80\8e<]\f4\e5\fa\ff/\f1?\ef6\fdd\fa\bf\9d<\d9\9a\d5\0d\00P\f1?\aeP\12pw\00\9a<\9aU!\0f\00p\f1?\ee\de\e3\e2\f9\fd\8d<&T\'\fc\ff\8f\f1?sr;\dc0\00\91<Y<=\12\00\b0\f1?\88\01\03\80y\7f\99<\b7\9e)\f8\ff\cf\f1?g\8c\9f\ab2\f9e\bc\00\d4\8a\f4\ff\ef\f1?\eb[\a7\9d\bf\7f\93<\a4\86\8b\0c\00\10\f2?\"[\fd\91k\80\9f<\03C\85\03\000\f2?3\bf\9f\eb\c2\ff\93<\84\f6\bc\ff\ffO\f2?r..~\e7\01v<\d9!)\f5\ffo\f2?a\0c\7fv\bb\fc\7f<<:\93\14\00\90\f2?+A\02<\ca\02r\bc\13cU\14\00\b0\f2?\02\1f\f23\82\80\92\bc;R\fe\eb\ff\cf\f2?\f2\dcO8~\ff\88\bc\96\ad\b8\0b\00\f0\f2?\c5A0PQ\ff\85\bc\af\e2z\fb\ff\0f\f3?\9d(^\88q\00\81\bc\7f_\ac\fe\ff/\f3?\15\b7\b7?]\ff\91\bcVg\a6\0c\00P\f3?\bd\82\8b\"\82\7f\95<!\f7\fb\11\00p\f3?\cc\d5\0d\c4\ba\00\80<\b9/Y\f9\ff\8f\f3?Q\a7\b2-\9d?\94\bcB\d2\dd\04\00\b0\f3?\e18vpk\7f\85<W\c9\b2\f5\ff\cf\f3?1\12\bf\10:\02z<\18\b4\b0\ea\ff\ef\f3?\b0R\b1fm\7f\98<\f4\af2\15\00\10\f4?$\85\19_7\f8g<)\8bG\17\000\f4?CQ\dcr\e6\01\83<c\b4\95\e7\ffO\f4?Z\89\b2\b8i\ff\89<\e0u\04\e8\ffo\f4?T\f2\c2\9b\b1\c0\95\bc\e7\c1o\ef\ff\8f\f4?r*:\f2\t@\9b<\04\a7\be\e5\ff\af\f4?E}\0d\bf\b7\ff\94\bc\de\'\10\17\00\d0\f4?=j\dcqd\c0\99\bc\e2>\f0\0f\00\f0\f4?\1cS\85\0b\89\7f\97<\d1K\dc\12\00\10\f5?6\a4fqe\04`<z\'\05\16\000\f5?\t2#\ce\ce\bf\96\bcLp\db\ec\ffO\f5?\d7\a1\05\05r\02\89\bc\a9T_\ef\ffo\f5?\12d\c9\0e\e6\bf\9b<\12\10\e6\17\00\90\f5?\90\ef\af\81\c5~\88<\92>\c9\03\00\b0\f5?\c0\0c\bf\n\08A\9f\bc\bc\19I\1d\00\d0\f5?)G%\fb*\81\98\bc\89z\b8\e7\ff\ef\f5?\04i\ed\80\b7~\94\bc")
 (data (i32.const 7440) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 7488) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 7552) "\c0\00\00\00\01\00\00\00\05\00\00\00\c0\00\00\00n\83\f9\a2\00\00\00\00\d1W\'\fc)\15DN\99\95b\db\c0\dd4\f5\abcQ\feA\90C<:n$\b7a\c5\bb\de\ea.I\06\e0\d2MB\1c\eb\1d\fe\1c\92\d1\t\f55\82\e8>\a7)\b1&p\9c\e9\84D\bb.9\d6\919A~_\b4\8b_\84\9c\f49S\83\ff\97\f8\1f;(\f9\bd\8b\11/\ef\0f\98\05\de\cf~6m\1fm\nZf?FO\b7\t\cb\'\c7\ba\'u-\ea_\9e\f79\07={\f1\e5\eb\b1_\fbk\ea\92R\8aF0\03V\08]\8d\1f \bc\cf\f0\abk{\fca\91\e3\a9\1d6\f4\9a_\85\99e\08\1b\e6^\80\d8\ff\8d@h\a0\14W\15\06\061\'sM")
 (data (i32.const 7760) "^\00\00\00\01\00\00\00\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
 (data (i32.const 7872) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 7937) "\10\00\00\01\00\00\00\03\00\00\00\00\10\00\00\00\00\00\00\00\a0\f6?")
 (data (i32.const 7969) "\c8\b9\f2\82,\d6\bf\80V7($\b4\fa<\00\00\00\00\00\80\f6?")
 (data (i32.const 8001) "\08X\bf\bd\d1\d5\bf \f7\e0\d8\08\a5\1c\bd\00\00\00\00\00`\f6?")
 (data (i32.const 8033) "XE\17wv\d5\bfmP\b6\d5\a4b#\bd\00\00\00\00\00@\f6?")
 (data (i32.const 8065) "\f8-\87\ad\1a\d5\bf\d5g\b0\9e\e4\84\e6\bc\00\00\00\00\00 \f6?")
 (data (i32.const 8097) "xw\95_\be\d4\bf\e0>)\93i\1b\04\bd\00\00\00\00\00\00\f6?")
 (data (i32.const 8129) "`\1c\c2\8ba\d4\bf\cc\84LH/\d8\13=\00\00\00\00\00\e0\f5?")
 (data (i32.const 8161) "\a8\86\860\04\d4\bf:\0b\82\ed\f3B\dc<\00\00\00\00\00\c0\f5?")
 (data (i32.const 8193) "HiUL\a6\d3\bf`\94Q\86\c6\b1 =\00\00\00\00\00\a0\f5?")
 (data (i32.const 8225) "\80\98\9a\ddG\d3\bf\92\80\c5\d4MY%=\00\00\00\00\00\80\f5?")
 (data (i32.const 8257) " \e1\ba\e2\e8\d2\bf\d8+\b7\99\1e{&=\00\00\00\00\00`\f5?")
 (data (i32.const 8289) "\88\de\13Z\89\d2\bf?\b0\cf\b6\14\ca\15=\00\00\00\00\00`\f5?")
 (data (i32.const 8321) "\88\de\13Z\89\d2\bf?\b0\cf\b6\14\ca\15=\00\00\00\00\00@\f5?")
 (data (i32.const 8353) "x\cf\fbA)\d2\bfv\daS($Z\16\bd\00\00\00\00\00 \f5?")
 (data (i32.const 8385) "\98i\c1\98\c8\d1\bf\04T\e7h\bc\af\1f\bd\00\00\00\00\00\00\f5?")
 (data (i32.const 8417) "\a8\ab\ab\\g\d1\bf\f0\a8\823\c6\1f\1f=\00\00\00\00\00\e0\f4?")
 (data (i32.const 8449) "H\ae\f9\8b\05\d1\bffZ\05\fd\c4\a8&\bd\00\00\00\00\00\c0\f4?")
 (data (i32.const 8481) "\90s\e2$\a3\d0\bf\0e\03\f4~\eek\0c\bd\00\00\00\00\00\a0\f4?")
 (data (i32.const 8513) "\d0\b4\94%@\d0\bf\7f-\f4\9e\b86\f0\bc\00\00\00\00\00\a0\f4?")
 (data (i32.const 8545) "\d0\b4\94%@\d0\bf\7f-\f4\9e\b86\f0\bc\00\00\00\00\00\80\f4?")
 (data (i32.const 8577) "@^m\18\b9\cf\bf\87<\99\ab*W\0d=\00\00\00\00\00`\f4?")
 (data (i32.const 8609) "`\dc\cb\ad\f0\ce\bf$\af\86\9c\b7&+=\00\00\00\00\00@\f4?")
 (data (i32.const 8641) "\f0*n\07\'\ce\bf\10\ff?TO/\17\bd\00\00\00\00\00 \f4?")
 (data (i32.const 8673) "\c0Ok!\\\cd\bf\1bh\ca\bb\91\ba!=\00\00\00\00\00\00\f4?")
 (data (i32.const 8705) "\a0\9a\c7\f7\8f\cc\bf4\84\9fhOy\'=\00\00\00\00\00\00\f4?")
 (data (i32.const 8737) "\a0\9a\c7\f7\8f\cc\bf4\84\9fhOy\'=\00\00\00\00\00\e0\f3?")
 (data (i32.const 8769) "\90-t\86\c2\cb\bf\8f\b7\8b1\b0N\19=\00\00\00\00\00\c0\f3?")
 (data (i32.const 8801) "\c0\80N\c9\f3\ca\bff\90\cd?cN\ba<\00\00\00\00\00\a0\f3?")
 (data (i32.const 8833) "\b0\e2\1f\bc#\ca\bf\ea\c1F\dcd\8c%\bd\00\00\00\00\00\a0\f3?")
 (data (i32.const 8865) "\b0\e2\1f\bc#\ca\bf\ea\c1F\dcd\8c%\bd\00\00\00\00\00\80\f3?")
 (data (i32.const 8897) "P\f4\9cZR\c9\bf\e3\d4\c1\04\d9\d1*\bd\00\00\00\00\00`\f3?")
 (data (i32.const 8929) "\d0 e\a0\7f\c8\bf\t\fa\db\7f\bf\bd+=\00\00\00\00\00@\f3?")
 (data (i32.const 8961) "\e0\10\02\89\ab\c7\bfXJSr\90\db+=\00\00\00\00\00@\f3?")
 (data (i32.const 8993) "\e0\10\02\89\ab\c7\bfXJSr\90\db+=\00\00\00\00\00 \f3?")
 (data (i32.const 9025) "\d0\19\e7\0f\d6\c6\bff\e2\b2\a3j\e4\10\bd\00\00\00\00\00\00\f3?")
 (data (i32.const 9057) "\90\a7p0\ff\c5\bf9P\10\9fC\9e\1e\bd\00\00\00\00\00\00\f3?")
 (data (i32.const 9089) "\90\a7p0\ff\c5\bf9P\10\9fC\9e\1e\bd\00\00\00\00\00\e0\f2?")
 (data (i32.const 9121) "\b0\a1\e3\e5&\c5\bf\8f[\07\90\8b\de \bd\00\00\00\00\00\c0\f2?")
 (data (i32.const 9153) "\80\cbl+M\c4\bf<x5a\c1\0c\17=\00\00\00\00\00\c0\f2?")
 (data (i32.const 9185) "\80\cbl+M\c4\bf<x5a\c1\0c\17=\00\00\00\00\00\a0\f2?")
 (data (i32.const 9217) "\90\1e \fcq\c3\bf:T\'M\86x\f1<\00\00\00\00\00\80\f2?")
 (data (i32.const 9249) "\f0\1f\f8R\95\c2\bf\08\c4q\170\8d$\bd\00\00\00\00\00`\f2?")
 (data (i32.const 9281) "`/\d5*\b7\c1\bf\96\a3\11\18\a4\80.\bd\00\00\00\00\00`\f2?")
 (data (i32.const 9313) "`/\d5*\b7\c1\bf\96\a3\11\18\a4\80.\bd\00\00\00\00\00@\f2?")
 (data (i32.const 9345) "\90\d0|~\d7\c0\bf\f4[\e8\88\96i\n=\00\00\00\00\00@\f2?")
 (data (i32.const 9377) "\90\d0|~\d7\c0\bf\f4[\e8\88\96i\n=\00\00\00\00\00 \f2?")
 (data (i32.const 9409) "\e0\db1\91\ec\bf\bf\f23\a3\\Tu%\bd\00\00\00\00\00\00\f2?")
 (data (i32.const 9442) "+n\07\'\be\bf<\00\f0*,4*=\00\00\00\00\00\00\f2?")
 (data (i32.const 9474) "+n\07\'\be\bf<\00\f0*,4*=\00\00\00\00\00\e0\f1?")
 (data (i32.const 9505) "\c0[\8fT^\bc\bf\06\be_XW\0c\1d\bd\00\00\00\00\00\c0\f1?")
 (data (i32.const 9537) "\e0J:m\92\ba\bf\c8\aa[\e859%=\00\00\00\00\00\c0\f1?")
 (data (i32.const 9569) "\e0J:m\92\ba\bf\c8\aa[\e859%=\00\00\00\00\00\a0\f1?")
 (data (i32.const 9601) "\a01\d6E\c3\b8\bfhV/M)|\13=\00\00\00\00\00\a0\f1?")
 (data (i32.const 9633) "\a01\d6E\c3\b8\bfhV/M)|\13=\00\00\00\00\00\80\f1?")
 (data (i32.const 9665) "`\e5\8a\d2\f0\b6\bf\das3\c97\97&\bd\00\00\00\00\00`\f1?")
 (data (i32.const 9697) " \06?\07\1b\b5\bfW^\c6a[\02\1f=\00\00\00\00\00`\f1?")
 (data (i32.const 9729) " \06?\07\1b\b5\bfW^\c6a[\02\1f=\00\00\00\00\00@\f1?")
 (data (i32.const 9761) "\e0\1b\96\d7A\b3\bf\df\13\f9\cc\da^,=\00\00\00\00\00@\f1?")
 (data (i32.const 9793) "\e0\1b\96\d7A\b3\bf\df\13\f9\cc\da^,=\00\00\00\00\00 \f1?")
 (data (i32.const 9825) "\80\a3\ee6e\b1\bf\t\a3\8fv^|\14=\00\00\00\00\00\00\f1?")
 (data (i32.const 9857) "\80\11\c00\n\af\bf\91\8e6\83\9eY-=\00\00\00\00\00\00\f1?")
 (data (i32.const 9889) "\80\11\c00\n\af\bf\91\8e6\83\9eY-=\00\00\00\00\00\e0\f0?")
 (data (i32.const 9921) "\80\19q\ddB\ab\bfLp\d6\e5z\82\1c=\00\00\00\00\00\e0\f0?")
 (data (i32.const 9953) "\80\19q\ddB\ab\bfLp\d6\e5z\82\1c=\00\00\00\00\00\c0\f0?")
 (data (i32.const 9985) "\c02\f6Xt\a7\bf\ee\a1\f24F\fc,\bd\00\00\00\00\00\c0\f0?")
 (data (i32.const 10017) "\c02\f6Xt\a7\bf\ee\a1\f24F\fc,\bd\00\00\00\00\00\a0\f0?")
 (data (i32.const 10049) "\c0\fe\b9\87\9e\a3\bf\aa\fe&\f5\b7\02\f5<\00\00\00\00\00\a0\f0?")
 (data (i32.const 10081) "\c0\fe\b9\87\9e\a3\bf\aa\fe&\f5\b7\02\f5<\00\00\00\00\00\80\f0?")
 (data (i32.const 10114) "x\0e\9b\82\9f\bf\e4\t~|&\80)\bd\00\00\00\00\00\80\f0?")
 (data (i32.const 10146) "x\0e\9b\82\9f\bf\e4\t~|&\80)\bd\00\00\00\00\00`\f0?")
 (data (i32.const 10177) "\80\d5\07\1b\b9\97\bf9\a6\fa\93T\8d(\bd\00\00\00\00\00@\f0?")
 (data (i32.const 10210) "\fc\b0\a8\c0\8f\bf\9c\a6\d3\f6|\1e\df\bc\00\00\00\00\00@\f0?")
 (data (i32.const 10242) "\fc\b0\a8\c0\8f\bf\9c\a6\d3\f6|\1e\df\bc\00\00\00\00\00 \f0?")
 (data (i32.const 10274) "\10k*\e0\7f\bf\e4@\da\0d?\e2\19\bd\00\00\00\00\00 \f0?")
 (data (i32.const 10306) "\10k*\e0\7f\bf\e4@\da\0d?\e2\19\bd\00\00\00\00\00\00\f0?")
 (data (i32.const 10358) "\f0?")
 (data (i32.const 10389) "\c0\ef?")
 (data (i32.const 10402) "\89u\15\10\80?\e8+\9d\99k\c7\10\bd\00\00\00\00\00\80\ef?")
 (data (i32.const 10433) "\80\93XV \90?\d2\f7\e2\06[\dc#\bd\00\00\00\00\00@\ef?")
 (data (i32.const 10466) "\c9(%I\98?4\0cZ2\ba\a0*\bd\00\00\00\00\00\00\ef?")
 (data (i32.const 10497) "@\e7\89]A\a0?S\d7\f1\\\c0\11\01=\00\00\00\00\00\c0\ee?")
 (data (i32.const 10530) ".\d4\aef\a4?(\fd\bdus\16,\bd\00\00\00\00\00\80\ee?")
 (data (i32.const 10561) "\c0\9f\14\aa\94\a8?}&Z\d0\95y\19\bd\00\00\00\00\00@\ee?")
 (data (i32.const 10593) "\c0\dd\cds\cb\ac?\07(\d8G\f2h\1a\bd\00\00\00\00\00 \ee?")
 (data (i32.const 10625) "\c0\06\c01\ea\ae?{;\c9O>\11\0e\bd\00\00\00\00\00\e0\ed?")
 (data (i32.const 10657) "`F\d1;\97\b1?\9b\9e\0dV]2%\bd\00\00\00\00\00\a0\ed?")
 (data (i32.const 10689) "\e0\d1\a7\f5\bd\b3?\d7N\db\a5^\c8,=\00\00\00\00\00`\ed?")
 (data (i32.const 10721) "\a0\97MZ\e9\b5?\1e\1d]<\06i,\bd\00\00\00\00\00@\ed?")
 (data (i32.const 10753) "\c0\ea\n\d3\00\b7?2\ed\9d\a9\8d\1e\ec<\00\00\00\00\00\00\ed?")
 (data (i32.const 10785) "@Y]^3\b9?\daG\bd:\\\11#=\00\00\00\00\00\c0\ec?")
 (data (i32.const 10817) "`\ad\8d\c8j\bb?\e5h\f7+\80\90\13\bd\00\00\00\00\00\a0\ec?")
 (data (i32.const 10849) "@\bc\01X\88\bc?\d3\acZ\c6\d1F&=\00\00\00\00\00`\ec?")
 (data (i32.const 10881) " \n\839\c7\be?\e0E\e6\afh\c0-\bd\00\00\00\00\00@\ec?")
 (data (i32.const 10913) "\e0\db9\91\e8\bf?\fd\n\a1O\d64%\bd\00\00\00\00\00\00\ec?")
 (data (i32.const 10945) "\e0\'\82\8e\17\c1?\f2\07-\cex\ef!=\00\00\00\00\00\e0\eb?")
 (data (i32.const 10977) "\f0#~+\aa\c1?4\998D\8e\a7,=\00\00\00\00\00\a0\eb?")
 (data (i32.const 11009) "\80\86\0ca\d1\c2?\a1\b4\81\cbl\9d\03=\00\00\00\00\00\80\eb?")
 (data (i32.const 11041) "\90\15\b0\fce\c3?\89rK#\a8/\c6<\00\00\00\00\00@\eb?")
 (data (i32.const 11073) "\b03\83=\91\c4?x\b6\fdTy\83%=\00\00\00\00\00 \eb?")
 (data (i32.const 11105) "\b0\a1\e4\e5\'\c5?\c7}i\e5\e83&=\00\00\00\00\00\e0\ea?")
 (data (i32.const 11137) "\10\8c\beNW\c6?x.<,\8b\cf\19=\00\00\00\00\00\c0\ea?")
 (data (i32.const 11169) "pu\8b\12\f0\c6?\e1!\9c\e5\8d\11%\bd\00\00\00\00\00\a0\ea?")
 (data (i32.const 11201) "PD\85\8d\89\c7?\05C\91p\10f\1c\bd\00\00\00\00\00`\ea?")
 (data (i32.const 11234) "9\eb\af\be\c8?\d1,\e9\aaT=\07\bd\00\00\00\00\00@\ea?")
 (data (i32.const 11266) "\f7\dcZZ\c9?o\ff\a0X(\f2\07=\00\00\00\00\00\00\ea?")
 (data (i32.const 11297) "\e0\8a<\ed\93\ca?i!VPCr(\bd\00\00\00\00\00\e0\e9?")
 (data (i32.const 11329) "\d0[W\d81\cb?\aa\e1\acN\8d5\0c\bd\00\00\00\00\00\c0\e9?")
 (data (i32.const 11361) "\e0;8\87\d0\cb?\b6\12TY\c4K-\bd\00\00\00\00\00\a0\e9?")
 (data (i32.const 11393) "\10\f0\c6\fbo\cc?\d2+\96\c5r\ec\f1\bc\00\00\00\00\00`\e9?")
 (data (i32.const 11425) "\90\d4\b0=\b1\cd?5\b0\15\f7*\ff*\bd\00\00\00\00\00@\e9?")
 (data (i32.const 11457) "\10\e7\ff\0eS\ce?0\f4A`\'\12\c2<\00\00\00\00\00 \e9?")
 (data (i32.const 11490) "\dd\e4\ad\f5\ce?\11\8e\bbe\15!\ca\bc\00\00\00\00\00\00\e9?")
 (data (i32.const 11521) "\b0\b3l\1c\99\cf?0\df\0c\ca\ec\cb\1b=\00\00\00\00\00\c0\e8?")
 (data (i32.const 11553) "XM`8q\d0?\91N\ed\16\db\9c\f8<\00\00\00\00\00\a0\e8?")
 (data (i32.const 11585) "`ag-\c4\d0?\e9\ea<\16\8b\18\'=\00\00\00\00\00\80\e8?")
 (data (i32.const 11617) "\e8\'\82\8e\17\d1?\1c\f0\a5c\0e!,\bd\00\00\00\00\00`\e8?")
 (data (i32.const 11649) "\f8\ac\cb\\k\d1?\81\16\a5\f7\cd\9a+=\00\00\00\00\00@\e8?")
 (data (i32.const 11681) "hZc\99\bf\d1?\b7\bdGQ\ed\a6,=\00\00\00\00\00 \e8?")
 (data (i32.const 11713) "\b8\0emE\14\d2?\ea\baF\ba\de\87\n=\00\00\00\00\00\e0\e7?")
 (data (i32.const 11745) "\90\dc|\f0\be\d2?\f4\04PJ\fa\9c*=\00\00\00\00\00\c0\e7?")
 (data (i32.const 11777) "`\d3\e1\f1\14\d3?\b8<!\d3z\e2(\bd\00\00\00\00\00\a0\e7?")
 (data (i32.const 11809) "\10\bevgk\d3?\c8w\f1\b0\cdn\11=\00\00\00\00\00\80\e7?")
 (data (i32.const 11841) "03wR\c2\d3?\\\bd\06\b6T;\18=\00\00\00\00\00`\e7?")
 (data (i32.const 11873) "\e8\d5#\b4\19\d4?\9d\e0\90\ec6\e4\08=\00\00\00\00\00@\e7?")
 (data (i32.const 11905) "\c8q\c2\8dq\d4?u\d6g\t\ce\'/\bd\00\00\00\00\00 \e7?")
 (data (i32.const 11937) "0\17\9e\e0\c9\d4?\a4\d8\n\1b\89 .\bd\00\00\00\00\00\00\e7?")
 (data (i32.const 11969) "\a08\07\ae\"\d5?Y\c7d\81p\be.=\00\00\00\00\00\e0\e6?")
 (data (i32.const 12001) "\d0\c8S\f7{\d5?\ef@]\ee\ed\ad\1f=\00\00\00\00\00\c0\e6?")
 (data (i32.const 12033) "`Y\df\bd\d5\d5?\dce\a4\08*\0b\n\bd")
 (data (i32.const 12048) "\19\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00$\1a\00\00\00\00\00\00 \00\00\00\00\00\00\00$\02\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00$A\00\00\00\00\00\00d\00\00\00\00\00\00\00$\t\00\00\00\00\00\00 \00\00\00\00\00\00\00\"A\00\00\00\00\00\00$A\00\00\00\00\00\00 \00\00\00\00\00\00\00$A\00\00\00\00\00\00 \00\00\00\00\00\00\00$A\00\00\00\00\00\00$A\00\00\00\00\00\00 \00\00\00\00\00\00\00$\01\00\00\00\00\00\00$\19\00\00\00\00\00\00a\08\00\00\02\00\00\00\"\01\00\00\00\00\00\00\"\t")
 (table $0 3 funcref)
 (elem (i32.const 1) $start:assembly/spmv~anonymous|0 $~lib/util/sort/COMPARATOR<u32>~anonymous|0)
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/collectLock (mut i32) (i32.const 0))
 (global $assembly/common/seed (mut i32) (i32.const 49734321))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $assembly/spmv/gaussian (mut i32) (i32.const 0))
 (global $~lib/math/rempio2_y0 (mut f64) (f64.const 0))
 (global $~lib/math/rempio2_y1 (mut f64) (f64.const 0))
 (global $~lib/math/res128_hi (mut i64) (i64.const 0))
 (global $~lib/util/math/log_tail (mut f64) (f64.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 12048))
 (export "__setArgumentsLength" (func $~setArgumentsLength))
 (export "memory" (memory $0))
 (export "__alloc" (func $~lib/rt/tlsf/__alloc))
 (export "__retain" (func $~lib/rt/pure/__retain))
 (export "__release" (func $~lib/rt/pure/__release))
 (export "__collect" (func $~lib/rt/pure/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "bfs" (func $assembly/bfs/bfs))
 (export "fft" (func $assembly/fft/fft))
 (export "lud" (func $assembly/lud/lud))
 (export "pagerank" (func $assembly/pagerank/pagerank))
 (export "spmv" (func $assembly/spmv/spmv))
 (start $~start)
 (func $~lib/rt/tlsf/removeBlock (; 2 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  i32.const -4
  i32.and
  local.tee $2
  i32.const 256
  i32.lt_u
  if
   local.get $2
   i32.const 4
   i32.shr_u
   local.set $3
  else
   local.get $2
   i32.const 31
   local.get $2
   i32.clz
   i32.sub
   local.tee $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $3
   local.get $2
   i32.const 7
   i32.sub
   local.set $4
  end
  local.get $1
  i32.load offset=20
  local.set $2
  local.get $1
  i32.load offset=16
  local.tee $5
  if
   local.get $5
   local.get $2
   i32.store offset=20
  end
  local.get $2
  if
   local.get $2
   local.get $5
   i32.store offset=16
  end
  local.get $1
  local.get $0
  local.get $3
  local.get $4
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  i32.eq
  if
   local.get $0
   local.get $3
   local.get $4
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $2
   i32.store offset=96
   local.get $2
   i32.eqz
   if
    local.get $0
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    local.tee $2
    i32.load offset=4
    i32.const 1
    local.get $3
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.set $1
    local.get $2
    local.get $1
    i32.store offset=4
    local.get $1
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const 1
     local.get $4
     i32.shl
     i32.const -1
     i32.xor
     i32.and
     i32.store
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (; 3 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.load
  local.set $3
  local.get $1
  i32.const 16
  i32.add
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.add
  local.tee $5
  i32.load
  local.tee $4
  i32.const 1
  i32.and
  if
   local.get $3
   i32.const -4
   i32.and
   i32.const 16
   i32.add
   local.get $4
   i32.const -4
   i32.and
   i32.add
   local.tee $2
   i32.const 1073741808
   i32.lt_u
   if
    local.get $0
    local.get $5
    call $~lib/rt/tlsf/removeBlock
    local.get $1
    local.get $2
    local.get $3
    i32.const 3
    i32.and
    i32.or
    local.tee $3
    i32.store
    local.get $1
    i32.const 16
    i32.add
    local.get $1
    i32.load
    i32.const -4
    i32.and
    i32.add
    local.tee $5
    i32.load
    local.set $4
   end
  end
  local.get $3
  i32.const 2
  i32.and
  if
   local.get $1
   i32.const 4
   i32.sub
   i32.load
   local.tee $2
   i32.load
   local.tee $7
   i32.const -4
   i32.and
   i32.const 16
   i32.add
   local.get $3
   i32.const -4
   i32.and
   i32.add
   local.tee $8
   i32.const 1073741808
   i32.lt_u
   if
    local.get $0
    local.get $2
    call $~lib/rt/tlsf/removeBlock
    local.get $2
    local.get $8
    local.get $7
    i32.const 3
    i32.and
    i32.or
    local.tee $3
    i32.store
    local.get $2
    local.set $1
   end
  end
  local.get $5
  local.get $4
  i32.const 2
  i32.or
  i32.store
  local.get $5
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $3
  i32.const -4
  i32.and
  local.tee $2
  i32.const 256
  i32.lt_u
  if
   local.get $2
   i32.const 4
   i32.shr_u
   local.set $2
  else
   local.get $2
   i32.const 31
   local.get $2
   i32.clz
   i32.sub
   local.tee $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $2
   local.get $3
   i32.const 7
   i32.sub
   local.set $6
  end
  local.get $0
  local.get $2
  local.get $6
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  local.set $3
  local.get $1
  i32.const 0
  i32.store offset=16
  local.get $1
  local.get $3
  i32.store offset=20
  local.get $3
  if
   local.get $3
   local.get $1
   i32.store offset=16
  end
  local.get $0
  local.get $2
  local.get $6
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store offset=96
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $6
  i32.shl
  i32.or
  i32.store
  local.get $0
  local.get $6
  i32.const 2
  i32.shl
  i32.add
  local.tee $0
  local.get $0
  i32.load offset=4
  i32.const 1
  local.get $2
  i32.shl
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (; 4 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $2
  local.get $0
  i32.load offset=1568
  local.tee $2
  if
   local.get $2
   local.get $1
   i32.const 16
   i32.sub
   i32.eq
   if
    local.get $2
    i32.load
    local.set $3
    local.get $1
    i32.const 16
    i32.sub
    local.set $1
   end
  end
  local.get $1
  i32.sub
  local.tee $2
  i32.const 48
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $3
  i32.const 2
  i32.and
  local.get $2
  i32.const 32
  i32.sub
  i32.const 1
  i32.or
  i32.or
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=16
  local.get $1
  i32.const 0
  i32.store offset=20
  local.get $1
  local.get $2
  i32.add
  i32.const 16
  i32.sub
  local.tee $2
  i32.const 2
  i32.store
  local.get $0
  local.get $2
  i32.store offset=1568
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/maybeInitialize (; 5 ;) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/rt/tlsf/ROOT
  local.tee $0
  i32.eqz
  if
   i32.const 1
   memory.size
   local.tee $0
   i32.gt_s
   if (result i32)
    i32.const 1
    local.get $0
    i32.sub
    memory.grow
    i32.const 0
    i32.lt_s
   else
    i32.const 0
   end
   if
    unreachable
   end
   i32.const 12256
   local.tee $0
   i32.const 0
   i32.store
   i32.const 13824
   i32.const 0
   i32.store
   loop $for-loop|0
    local.get $1
    i32.const 23
    i32.lt_u
    if
     local.get $1
     i32.const 2
     i32.shl
     i32.const 12256
     i32.add
     i32.const 0
     i32.store offset=4
     i32.const 0
     local.set $2
     loop $for-loop|1
      local.get $2
      i32.const 16
      i32.lt_u
      if
       local.get $2
       local.get $1
       i32.const 4
       i32.shl
       i32.add
       i32.const 2
       i32.shl
       i32.const 12256
       i32.add
       i32.const 0
       i32.store offset=96
       local.get $2
       i32.const 1
       i32.add
       local.set $2
       br $for-loop|1
      end
     end
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|0
    end
   end
   i32.const 12256
   i32.const 13840
   memory.size
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   i32.const 12256
   global.set $~lib/rt/tlsf/ROOT
  end
  local.get $0
 )
 (func $~lib/rt/tlsf/prepareSize (; 6 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 1073741808
  i32.ge_u
  if
   i32.const 1040
   i32.const 1104
   i32.const 461
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $0
  i32.const 16
  local.get $0
  i32.const 16
  i32.gt_u
  select
 )
 (func $~lib/rt/tlsf/searchBlock (; 7 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if
   local.get $1
   i32.const 4
   i32.shr_u
   local.set $1
  else
   local.get $1
   i32.const 536870904
   i32.lt_u
   if
    local.get $1
    i32.const 1
    i32.const 27
    local.get $1
    i32.clz
    i32.sub
    i32.shl
    i32.add
    i32.const 1
    i32.sub
    local.set $1
   end
   local.get $1
   i32.const 31
   local.get $1
   i32.clz
   i32.sub
   local.tee $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $1
   local.get $2
   i32.const 7
   i32.sub
   local.set $2
  end
  local.get $0
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const -1
  local.get $1
  i32.shl
  i32.and
  local.tee $1
  if (result i32)
   local.get $0
   local.get $1
   i32.ctz
   local.get $2
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
  else
   local.get $0
   i32.load
   i32.const -1
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.tee $1
   if (result i32)
    local.get $0
    local.get $1
    i32.ctz
    local.tee $1
    i32.const 4
    i32.shl
    local.get $0
    local.get $1
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    i32.ctz
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
   else
    i32.const 0
   end
  end
 )
 (func $~lib/rt/tlsf/prepareBlock (; 8 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.load
  local.tee $3
  i32.const -4
  i32.and
  local.get $2
  i32.sub
  local.tee $4
  i32.const 32
  i32.ge_u
  if
   local.get $1
   local.get $2
   local.get $3
   i32.const 2
   i32.and
   i32.or
   i32.store
   local.get $2
   local.get $1
   i32.const 16
   i32.add
   i32.add
   local.tee $1
   local.get $4
   i32.const 16
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $1
   local.get $3
   i32.const -2
   i32.and
   i32.store
   local.get $1
   i32.const 16
   i32.add
   local.tee $0
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.get $0
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   i32.load
   i32.const -3
   i32.and
   i32.store
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (; 9 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/prepareSize
  local.tee $4
  call $~lib/rt/tlsf/searchBlock
  local.tee $3
  i32.eqz
  if
   i32.const 1
   global.set $~lib/rt/tlsf/collectLock
   i32.const 0
   global.set $~lib/rt/tlsf/collectLock
   local.get $0
   local.get $4
   call $~lib/rt/tlsf/searchBlock
   local.tee $3
   i32.eqz
   if
    local.get $4
    i32.const 536870904
    i32.lt_u
    if (result i32)
     local.get $4
     i32.const 1
     i32.const 27
     local.get $4
     i32.clz
     i32.sub
     i32.shl
     i32.const 1
     i32.sub
     i32.add
    else
     local.get $4
    end
    i32.const 16
    memory.size
    local.tee $5
    i32.const 16
    i32.shl
    i32.const 16
    i32.sub
    local.get $0
    i32.load offset=1568
    i32.ne
    i32.shl
    i32.add
    i32.const 65535
    i32.add
    i32.const -65536
    i32.and
    i32.const 16
    i32.shr_u
    local.set $3
    local.get $5
    local.get $3
    local.get $5
    local.get $3
    i32.gt_s
    select
    memory.grow
    i32.const 0
    i32.lt_s
    if
     local.get $3
     memory.grow
     i32.const 0
     i32.lt_s
     if
      unreachable
     end
    end
    local.get $0
    local.get $5
    i32.const 16
    i32.shl
    memory.size
    i32.const 16
    i32.shl
    call $~lib/rt/tlsf/addMemory
    local.get $0
    local.get $4
    call $~lib/rt/tlsf/searchBlock
    local.set $3
   end
  end
  local.get $3
  i32.const 0
  i32.store offset=4
  local.get $3
  local.get $2
  i32.store offset=8
  local.get $3
  local.get $1
  i32.store offset=12
  local.get $0
  local.get $3
  call $~lib/rt/tlsf/removeBlock
  local.get $0
  local.get $3
  local.get $4
  call $~lib/rt/tlsf/prepareBlock
  local.get $3
 )
 (func $~lib/rt/tlsf/__alloc (; 10 ;) (param $0 i32) (param $1 i32) (result i32)
  call $~lib/rt/tlsf/maybeInitialize
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/allocateBlock
  i32.const 16
  i32.add
 )
 (func $~lib/rt/pure/__retain (; 11 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 12252
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   local.tee $1
   local.get $1
   i32.load offset=4
   i32.const 1
   i32.add
   i32.store offset=4
  end
  local.get $0
 )
 (func $~lib/rt/pure/__release (; 12 ;) (param $0 i32)
  local.get $0
  i32.const 12252
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
 )
 (func $~lib/memory/memory.fill (; 13 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.eqz
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8
   local.get $0
   local.get $1
   i32.add
   i32.const 4
   i32.sub
   local.tee $2
   i32.const 0
   i32.store8 offset=3
   local.get $1
   i32.const 2
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8 offset=1
   local.get $0
   i32.const 0
   i32.store8 offset=2
   local.get $2
   i32.const 0
   i32.store8 offset=2
   local.get $2
   i32.const 0
   i32.store8 offset=1
   local.get $1
   i32.const 6
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8 offset=3
   local.get $2
   i32.const 0
   i32.store8
   local.get $1
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   local.get $0
   i32.sub
   i32.const 3
   i32.and
   local.tee $2
   i32.add
   local.tee $0
   i32.const 0
   i32.store
   local.get $0
   local.get $1
   local.get $2
   i32.sub
   i32.const -4
   i32.and
   local.tee $2
   i32.add
   i32.const 28
   i32.sub
   local.tee $1
   i32.const 0
   i32.store offset=24
   local.get $2
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $1
   i32.const 0
   i32.store offset=16
   local.get $1
   i32.const 0
   i32.store offset=20
   local.get $2
   i32.const 24
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store offset=12
   local.get $0
   i32.const 0
   i32.store offset=16
   local.get $0
   i32.const 0
   i32.store offset=20
   local.get $0
   i32.const 0
   i32.store offset=24
   local.get $1
   i32.const 0
   i32.store
   local.get $1
   i32.const 0
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.store offset=8
   local.get $1
   i32.const 0
   i32.store offset=12
   local.get $0
   local.get $0
   i32.const 4
   i32.and
   i32.const 24
   i32.add
   local.tee $1
   i32.add
   local.set $0
   local.get $2
   local.get $1
   i32.sub
   local.set $1
   loop $while-continue|0
    local.get $1
    i32.const 32
    i32.ge_u
    if
     local.get $0
     i64.const 0
     i64.store
     local.get $0
     i64.const 0
     i64.store offset=8
     local.get $0
     i64.const 0
     i64.store offset=16
     local.get $0
     i64.const 0
     i64.store offset=24
     local.get $1
     i32.const 32
     i32.sub
     local.set $1
     local.get $0
     i32.const 32
     i32.add
     local.set $0
     br $while-continue|0
    end
   end
  end
 )
 (func $~lib/staticarray/StaticArray<f64>#constructor (; 14 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 134217726
  i32.gt_u
  if
   i32.const 1152
   i32.const 1200
   i32.const 83
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/rt/tlsf/maybeInitialize
  local.get $0
  i32.const 3
  i32.shl
  local.tee $1
  i32.const 3
  call $~lib/rt/tlsf/allocateBlock
  i32.const 16
  i32.add
  local.tee $0
  local.get $1
  call $~lib/memory/memory.fill
  local.get $0
  i32.const 12252
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   local.tee $1
   local.get $1
   i32.load offset=4
   i32.const 1
   i32.add
   i32.store offset=4
  end
  local.get $0
 )
 (func $start:assembly/spmv~anonymous|0 (; 15 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/staticarray/StaticArray<f64>#constructor
  local.set $2
  loop $for-loop|0
   local.get $1
   local.get $0
   i32.lt_s
   if
    local.get $2
    local.get $1
    i32.const 3
    i32.shl
    i32.add
    f64.const 0
    f64.store
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $2
 )
 (func $~setArgumentsLength (; 16 ;) (param $0 i32)
  local.get $0
  global.set $~argumentsLength
 )
 (func $~lib/math/NativeMath.exp (; 17 ;) (param $0 f64) (result f64)
  (local $1 f64)
  (local $2 i64)
  (local $3 i32)
  (local $4 f64)
  (local $5 i64)
  (local $6 f64)
  (local $7 i32)
  (local $8 f64)
  block $~lib/util/math/exp_lut|inlined.0
   local.get $0
   i64.reinterpret_f64
   local.tee $2
   i64.const 52
   i64.shr_u
   i64.const 2047
   i64.and
   i32.wrap_i64
   local.tee $3
   i32.const 969
   i32.sub
   i32.const 63
   i32.ge_u
   if
    local.get $3
    i32.const 969
    i32.sub
    i32.const -2147483648
    i32.ge_u
    if
     f64.const 1
     local.set $1
     br $~lib/util/math/exp_lut|inlined.0
    end
    local.get $3
    i32.const 1033
    i32.ge_u
    if
     local.get $2
     i64.const -4503599627370496
     i64.eq
     br_if $~lib/util/math/exp_lut|inlined.0
     local.get $3
     i32.const 2047
     i32.ge_u
     if
      f64.const 1
      local.get $0
      f64.add
      local.set $1
      br $~lib/util/math/exp_lut|inlined.0
     end
     f64.const 0
     f64.const inf
     local.get $2
     i64.const 63
     i64.shr_u
     i64.const 0
     i64.ne
     select
     local.set $1
     br $~lib/util/math/exp_lut|inlined.0
    end
    i32.const 0
    local.set $3
   end
   f64.const 184.6649652337873
   local.get $0
   f64.mul
   f64.const 6755399441055744
   f64.add
   local.tee $1
   i64.reinterpret_f64
   local.tee $5
   i64.const 127
   i64.and
   i64.const 1
   i64.shl
   i32.wrap_i64
   i32.const 3
   i32.shl
   i32.const 1264
   i32.add
   local.tee $7
   i64.load offset=8
   local.get $5
   i64.const 45
   i64.shl
   i64.add
   local.set $2
   local.get $0
   local.get $1
   f64.const 6755399441055744
   f64.sub
   local.tee $0
   f64.const -0.005415212348111709
   f64.mul
   f64.add
   local.get $0
   f64.const -1.2864023111638346e-14
   f64.mul
   f64.add
   local.tee $0
   local.get $0
   f64.mul
   local.set $1
   local.get $7
   i64.load
   f64.reinterpret_i64
   local.get $0
   f64.add
   local.get $1
   f64.const 0.49999999999996786
   local.get $0
   f64.const 0.16666666666665886
   f64.mul
   f64.add
   f64.mul
   f64.add
   local.get $1
   local.get $1
   f64.mul
   f64.const 0.0416666808410674
   local.get $0
   f64.const 0.008333335853059549
   f64.mul
   f64.add
   f64.mul
   f64.add
   local.set $0
   local.get $3
   i32.eqz
   if
    block $~lib/util/math/specialcase|inlined.0 (result f64)
     local.get $5
     i64.const 2147483648
     i64.and
     i64.eqz
     if
      f64.const 5486124068793688683255936e279
      local.get $2
      i64.const 4544132024016830464
      i64.sub
      f64.reinterpret_i64
      local.tee $1
      local.get $1
      local.get $0
      f64.mul
      f64.add
      f64.mul
      br $~lib/util/math/specialcase|inlined.0
     end
     local.get $2
     i64.const 4602678819172646912
     i64.add
     local.tee $2
     f64.reinterpret_i64
     local.tee $4
     local.get $4
     local.get $0
     f64.mul
     f64.add
     local.tee $1
     f64.abs
     f64.const 1
     f64.lt
     if (result f64)
      f64.const 1
      local.get $1
      f64.copysign
      local.tee $6
      local.get $1
      f64.add
      local.tee $8
      local.get $6
      local.get $8
      f64.sub
      local.get $1
      f64.add
      local.get $4
      local.get $1
      f64.sub
      local.get $4
      local.get $0
      f64.mul
      f64.add
      f64.add
      f64.add
      local.get $6
      f64.sub
      local.tee $1
      f64.const 0
      f64.eq
      if (result f64)
       local.get $2
       i64.const -9223372036854775808
       i64.and
       f64.reinterpret_i64
      else
       local.get $1
      end
     else
      local.get $1
     end
     f64.const 2.2250738585072014e-308
     f64.mul
    end
    local.set $1
    br $~lib/util/math/exp_lut|inlined.0
   end
   local.get $2
   f64.reinterpret_i64
   local.tee $1
   local.get $1
   local.get $0
   f64.mul
   f64.add
   local.set $1
  end
  local.get $1
 )
 (func $~lib/math/NativeMath.log (; 18 ;) (param $0 f64) (result f64)
  (local $1 f64)
  (local $2 f64)
  (local $3 i64)
  (local $4 i32)
  (local $5 f64)
  (local $6 i64)
  (local $7 i32)
  block $~lib/util/math/log_lut|inlined.0
   local.get $0
   i64.reinterpret_f64
   local.tee $3
   i64.const 4606619468846596096
   i64.sub
   i64.const 854320534781952
   i64.lt_u
   if
    local.get $0
    f64.const 1
    f64.sub
    local.tee $0
    local.get $0
    f64.mul
    local.tee $1
    local.get $0
    f64.mul
    local.tee $2
    f64.const 0.3333333333333352
    local.get $0
    f64.const -0.24999999999998432
    f64.mul
    f64.add
    local.get $1
    f64.const 0.19999999999320328
    f64.mul
    f64.add
    local.get $2
    f64.const -0.16666666669929706
    local.get $0
    f64.const 0.14285715076560868
    f64.mul
    f64.add
    local.get $1
    f64.const -0.12499997863982555
    f64.mul
    f64.add
    local.get $2
    f64.const 0.11110712032936046
    local.get $0
    f64.const -0.10000486757818193
    f64.mul
    f64.add
    local.get $1
    f64.const 0.09181994006195467
    f64.mul
    f64.add
    local.get $2
    f64.const -0.08328363062289341
    f64.mul
    f64.add
    f64.mul
    f64.add
    f64.mul
    f64.add
    f64.mul
    local.get $0
    local.get $0
    local.get $0
    local.get $0
    f64.const 134217728
    f64.mul
    local.tee $1
    f64.add
    local.get $1
    f64.sub
    local.tee $1
    local.get $1
    f64.mul
    f64.const -0.5
    f64.mul
    local.tee $2
    f64.add
    local.tee $5
    f64.sub
    local.get $2
    f64.add
    f64.const -0.5
    local.get $0
    local.get $1
    f64.sub
    f64.mul
    local.get $1
    local.get $0
    f64.add
    f64.mul
    f64.add
    f64.add
    local.get $5
    f64.add
    local.set $0
    br $~lib/util/math/log_lut|inlined.0
   end
   local.get $3
   i64.const 48
   i64.shr_u
   i32.wrap_i64
   local.tee $4
   i32.const 16
   i32.sub
   i32.const 32736
   i32.ge_u
   if
    local.get $3
    i64.const 1
    i64.shl
    i64.eqz
    if
     f64.const -1
     local.get $0
     local.get $0
     f64.mul
     f64.div
     local.set $0
     br $~lib/util/math/log_lut|inlined.0
    end
    local.get $3
    i64.const 9218868437227405312
    i64.eq
    br_if $~lib/util/math/log_lut|inlined.0
    i32.const 1
    local.get $4
    i32.const 32752
    i32.and
    i32.const 32752
    i32.eq
    local.get $4
    i32.const 32768
    i32.and
    select
    if
     local.get $0
     local.get $0
     f64.sub
     local.tee $0
     local.get $0
     f64.div
     local.set $0
     br $~lib/util/math/log_lut|inlined.0
    end
    local.get $0
    f64.const 4503599627370496
    f64.mul
    i64.reinterpret_f64
    i64.const 234187180623265792
    i64.sub
    local.set $3
   end
   local.get $3
   i64.const 4604367669032910848
   i64.sub
   local.tee $6
   i64.const 52
   i64.shr_s
   f64.convert_i64_s
   local.tee $2
   f64.const 0.6931471805598903
   f64.mul
   local.get $6
   i64.const 45
   i64.shr_u
   i64.const 127
   i64.and
   i32.wrap_i64
   local.tee $4
   i32.const 4
   i32.shl
   i32.const 3328
   i32.add
   local.tee $7
   f64.load offset=8
   f64.add
   local.tee $5
   local.get $3
   local.get $6
   i64.const -4503599627370496
   i64.and
   i64.sub
   f64.reinterpret_i64
   local.get $4
   i32.const 4
   i32.shl
   i32.const 5392
   i32.add
   local.tee $4
   f64.load
   f64.sub
   local.get $4
   f64.load offset=8
   f64.sub
   local.get $7
   f64.load
   f64.mul
   local.tee $0
   f64.add
   local.set $1
   local.get $5
   local.get $1
   f64.sub
   local.get $0
   f64.add
   local.get $2
   f64.const 5.497923018708371e-14
   f64.mul
   f64.add
   local.get $0
   local.get $0
   f64.mul
   local.tee $2
   f64.const -0.5000000000000001
   f64.mul
   f64.add
   local.get $0
   local.get $2
   f64.mul
   f64.const 0.33333333331825593
   local.get $0
   f64.const -0.2499999999622955
   f64.mul
   f64.add
   local.get $2
   f64.const 0.20000304511814496
   local.get $0
   f64.const -0.16667054827627667
   f64.mul
   f64.add
   f64.mul
   f64.add
   f64.mul
   f64.add
   local.get $1
   f64.add
   local.set $0
  end
  local.get $0
 )
 (func $assembly/spmv/Ziggurat#zigset (; 19 ;) (param $0 i32)
  (local $1 f64)
  (local $2 f64)
  (local $3 f64)
  (local $4 i32)
  f64.const 3.442619855899
  local.set $2
  f64.const 3.442619855899
  local.set $1
  f64.const 0.00991256303526217
  f64.const -5.925815736115027
  call $~lib/math/NativeMath.exp
  f64.div
  local.set $3
  local.get $0
  i32.load offset=12
  f64.const 3.442619855899
  local.get $3
  f64.div
  f64.const 2147483648
  f64.mul
  f64.floor
  f64.store
  local.get $0
  i32.load offset=12
  f64.const 0
  f64.store offset=8
  local.get $0
  i32.load offset=4
  local.get $3
  f64.const 2147483648
  f64.div
  f64.store
  local.get $0
  i32.load offset=4
  f64.const 1.6030947938091123e-09
  f64.store offset=1016
  local.get $0
  i32.load offset=8
  f64.const 1
  f64.store
  local.get $0
  i32.load offset=8
  f64.const -5.925815736115027
  call $~lib/math/NativeMath.exp
  f64.store offset=1016
  i32.const 126
  local.set $4
  loop $for-loop|0
   local.get $4
   i32.const 1
   i32.ge_s
   if
    f64.const -2
    f64.const 0.00991256303526217
    local.get $2
    f64.div
    f64.const -0.5
    local.get $2
    f64.mul
    local.get $2
    f64.mul
    call $~lib/math/NativeMath.exp
    f64.add
    call $~lib/math/NativeMath.log
    f64.mul
    f64.sqrt
    local.set $2
    local.get $0
    i32.load offset=12
    local.get $4
    i32.const 1
    i32.add
    i32.const 3
    i32.shl
    i32.add
    local.get $2
    local.get $1
    f64.div
    f64.const 2147483648
    f64.mul
    f64.floor
    f64.store
    local.get $2
    local.set $1
    local.get $0
    i32.load offset=8
    local.get $4
    i32.const 3
    i32.shl
    i32.add
    f64.const -0.5
    local.get $2
    f64.mul
    local.get $2
    f64.mul
    call $~lib/math/NativeMath.exp
    f64.store
    local.get $0
    i32.load offset=4
    local.get $4
    i32.const 3
    i32.shl
    i32.add
    local.get $2
    f64.const 2147483648
    f64.div
    f64.store
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    br $for-loop|0
   end
  end
 )
 (func $assembly/spmv/Ziggurat#constructor (; 20 ;) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  call $~lib/rt/tlsf/maybeInitialize
  i32.const 16
  i32.const 4
  call $~lib/rt/tlsf/allocateBlock
  i32.const 16
  i32.add
  local.tee $1
  i32.const 12252
  i32.gt_u
  if
   local.get $1
   i32.const 16
   i32.sub
   local.tee $3
   local.get $3
   i32.load offset=4
   i32.const 1
   i32.add
   i32.store offset=4
  end
  local.get $1
  i32.const 123456789
  i32.store
  i32.const 1
  global.set $~argumentsLength
  i32.const 128
  call $start:assembly/spmv~anonymous|0
  local.tee $3
  local.set $2
  local.get $3
  i32.const 12252
  i32.gt_u
  if
   local.get $2
   i32.const 16
   i32.sub
   local.tee $0
   local.get $0
   i32.load offset=4
   i32.const 1
   i32.add
   i32.store offset=4
  end
  local.get $1
  local.get $2
  i32.store offset=4
  i32.const 1
  global.set $~argumentsLength
  i32.const 128
  call $start:assembly/spmv~anonymous|0
  local.tee $2
  local.set $0
  local.get $2
  i32.const 12252
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   local.tee $4
   local.get $4
   i32.load offset=4
   i32.const 1
   i32.add
   i32.store offset=4
  end
  local.get $1
  local.get $0
  i32.store offset=8
  i32.const 1
  global.set $~argumentsLength
  i32.const 128
  call $start:assembly/spmv~anonymous|0
  local.tee $0
  local.set $4
  local.get $0
  i32.const 12252
  i32.gt_u
  if
   local.get $4
   i32.const 16
   i32.sub
   local.tee $5
   local.get $5
   i32.load offset=4
   i32.const 1
   i32.add
   i32.store offset=4
  end
  local.get $1
  local.get $4
  i32.store offset=12
  local.get $1
  call $assembly/spmv/Ziggurat#zigset
  local.get $3
  i32.const 12252
  i32.gt_u
  if
   local.get $3
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
  local.get $2
  i32.const 12252
  i32.gt_u
  if
   local.get $2
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
  local.get $0
  i32.const 12252
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
  local.get $1
 )
 (func $~lib/staticarray/StaticArray<bool>#constructor (; 21 ;) (result i32)
  (local $0 i32)
  (local $1 i32)
  call $~lib/rt/tlsf/maybeInitialize
  i32.const 500000
  i32.const 9
  call $~lib/rt/tlsf/allocateBlock
  i32.const 16
  i32.add
  local.tee $0
  i32.const 500000
  call $~lib/memory/memory.fill
  local.get $0
  i32.const 12252
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   local.tee $1
   local.get $1
   i32.load offset=4
   i32.const 1
   i32.add
   i32.store offset=4
  end
  local.get $0
 )
 (func $~lib/staticarray/StaticArray<i32>#constructor (; 22 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 268435452
  i32.gt_u
  if
   i32.const 1152
   i32.const 1200
   i32.const 83
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/rt/tlsf/maybeInitialize
  local.get $0
  i32.const 2
  i32.shl
  local.tee $1
  i32.const 10
  call $~lib/rt/tlsf/allocateBlock
  i32.const 16
  i32.add
  local.tee $0
  local.get $1
  call $~lib/memory/memory.fill
  local.get $0
  i32.const 12252
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   local.tee $1
   local.get $1
   i32.load offset=4
   i32.const 1
   i32.add
   i32.store offset=4
  end
  local.get $0
 )
 (func $~lib/array/Array<assembly/bfs/Edge>#constructor (; 23 ;) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  call $~lib/rt/tlsf/maybeInitialize
  i32.const 0
  i32.const 0
  call $~lib/rt/tlsf/allocateBlock
  i32.const 16
  i32.add
  local.tee $1
  i32.const 0
  call $~lib/memory/memory.fill
  call $~lib/rt/tlsf/maybeInitialize
  i32.const 16
  i32.const 12
  call $~lib/rt/tlsf/allocateBlock
  i32.const 16
  i32.add
  local.tee $2
  i32.const 12252
  i32.gt_u
  if
   local.get $2
   i32.const 16
   i32.sub
   local.tee $0
   local.get $0
   i32.load offset=4
   i32.const 1
   i32.add
   i32.store offset=4
  end
  local.get $2
  i32.const 0
  i32.store
  local.get $2
  i32.const 0
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.store offset=8
  local.get $2
  i32.const 0
  i32.store offset=12
  local.get $1
  local.tee $0
  local.get $2
  i32.load
  local.tee $3
  i32.ne
  if
   local.get $0
   i32.const 12252
   i32.gt_u
   if
    local.get $0
    i32.const 16
    i32.sub
    local.tee $4
    local.get $4
    i32.load offset=4
    i32.const 1
    i32.add
    i32.store offset=4
   end
   local.get $3
   i32.const 12252
   i32.gt_u
   if
    local.get $3
    i32.const 16
    i32.sub
    call $~lib/rt/pure/decrement
   end
  end
  local.get $2
  local.get $0
  i32.store
  local.get $2
  local.get $0
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.store offset=8
  local.get $2
  i32.const 0
  i32.store offset=12
  local.get $2
 )
 (func $~lib/staticarray/StaticArray<~lib/array/Array<assembly/bfs/Edge>>#__unchecked_set (; 24 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $2
  local.get $0
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.tee $0
  i32.load
  local.tee $1
  i32.ne
  if
   local.get $2
   i32.const 12252
   i32.gt_u
   if
    local.get $2
    i32.const 16
    i32.sub
    local.tee $3
    local.get $3
    i32.load offset=4
    i32.const 1
    i32.add
    i32.store offset=4
   end
   local.get $0
   local.get $2
   i32.store
   local.get $1
   i32.const 12252
   i32.gt_u
   if
    local.get $1
    i32.const 16
    i32.sub
    call $~lib/rt/pure/decrement
   end
  end
 )
 (func $assembly/bfs/Edge#constructor (; 25 ;) (param $0 f64) (param $1 f64) (result i32)
  (local $2 i32)
  (local $3 i32)
  call $~lib/rt/tlsf/maybeInitialize
  i32.const 16
  i32.const 11
  call $~lib/rt/tlsf/allocateBlock
  i32.const 16
  i32.add
  local.tee $2
  i32.const 12252
  i32.gt_u
  if
   local.get $2
   i32.const 16
   i32.sub
   local.tee $3
   local.get $3
   i32.load offset=4
   i32.const 1
   i32.add
   i32.store offset=4
  end
  local.get $2
  local.get $0
  f64.store
  local.get $2
  local.get $1
  f64.store offset=8
  local.get $2
 )
 (func $~lib/util/memory/memcpy (; 26 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  loop $while-continue|0
   local.get $1
   i32.const 3
   i32.and
   i32.const 0
   local.get $2
   select
   if
    local.get $0
    local.tee $3
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    local.tee $4
    i32.const 1
    i32.add
    local.set $1
    local.get $3
    local.get $4
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.const 3
  i32.and
  i32.eqz
  if
   loop $while-continue|1
    local.get $2
    i32.const 16
    i32.ge_u
    if
     local.get $0
     local.get $1
     i32.load
     i32.store
     local.get $0
     local.get $1
     i32.load offset=4
     i32.store offset=4
     local.get $0
     local.get $1
     i32.load offset=8
     i32.store offset=8
     local.get $0
     local.get $1
     i32.load offset=12
     i32.store offset=12
     local.get $1
     i32.const 16
     i32.add
     local.set $1
     local.get $0
     i32.const 16
     i32.add
     local.set $0
     local.get $2
     i32.const 16
     i32.sub
     local.set $2
     br $while-continue|1
    end
   end
   local.get $2
   i32.const 8
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    local.get $1
    i32.load offset=4
    i32.store offset=4
    local.get $1
    i32.const 8
    i32.add
    local.set $1
    local.get $0
    i32.const 8
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 4
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $1
    i32.const 4
    i32.add
    local.set $1
    local.get $0
    i32.const 4
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 2
   i32.and
   if
    local.get $0
    local.get $1
    i32.load16_u
    i32.store16
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    local.get $0
    i32.const 2
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 1
   i32.and
   if
    local.get $0
    local.get $1
    i32.load8_u
    i32.store8
   end
   return
  end
  local.get $2
  i32.const 32
  i32.ge_u
  if
   block $break|2
    block $case2|2
     block $case1|2
      local.get $0
      i32.const 3
      i32.and
      local.tee $3
      i32.const 1
      i32.ne
      if
       local.get $3
       i32.const 2
       i32.eq
       br_if $case1|2
       local.get $3
       i32.const 3
       i32.eq
       br_if $case2|2
       br $break|2
      end
      local.get $1
      i32.load
      local.set $5
      local.get $0
      local.get $1
      i32.load8_u
      i32.store8
      local.get $0
      i32.const 1
      i32.add
      local.tee $0
      i32.const 1
      i32.add
      local.set $3
      local.get $1
      i32.const 1
      i32.add
      local.tee $1
      i32.const 1
      i32.add
      local.set $4
      local.get $0
      local.get $1
      i32.load8_u
      i32.store8
      local.get $3
      i32.const 1
      i32.add
      local.set $0
      local.get $4
      i32.const 1
      i32.add
      local.set $1
      local.get $3
      local.get $4
      i32.load8_u
      i32.store8
      local.get $2
      i32.const 3
      i32.sub
      local.set $2
      loop $while-continue|3
       local.get $2
       i32.const 17
       i32.ge_u
       if
        local.get $0
        local.get $1
        i32.load offset=1
        local.tee $3
        i32.const 8
        i32.shl
        local.get $5
        i32.const 24
        i32.shr_u
        i32.or
        i32.store
        local.get $0
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $1
        i32.load offset=5
        local.tee $3
        i32.const 8
        i32.shl
        i32.or
        i32.store offset=4
        local.get $0
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $1
        i32.load offset=9
        local.tee $3
        i32.const 8
        i32.shl
        i32.or
        i32.store offset=8
        local.get $0
        local.get $1
        i32.load offset=13
        local.tee $5
        i32.const 8
        i32.shl
        local.get $3
        i32.const 24
        i32.shr_u
        i32.or
        i32.store offset=12
        local.get $1
        i32.const 16
        i32.add
        local.set $1
        local.get $0
        i32.const 16
        i32.add
        local.set $0
        local.get $2
        i32.const 16
        i32.sub
        local.set $2
        br $while-continue|3
       end
      end
      br $break|2
     end
     local.get $1
     i32.load
     local.set $5
     local.get $0
     local.get $1
     i32.load8_u
     i32.store8
     local.get $0
     i32.const 1
     i32.add
     local.tee $3
     i32.const 1
     i32.add
     local.set $0
     local.get $1
     i32.const 1
     i32.add
     local.tee $4
     i32.const 1
     i32.add
     local.set $1
     local.get $3
     local.get $4
     i32.load8_u
     i32.store8
     local.get $2
     i32.const 2
     i32.sub
     local.set $2
     loop $while-continue|4
      local.get $2
      i32.const 18
      i32.ge_u
      if
       local.get $0
       local.get $1
       i32.load offset=2
       local.tee $3
       i32.const 16
       i32.shl
       local.get $5
       i32.const 16
       i32.shr_u
       i32.or
       i32.store
       local.get $0
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $1
       i32.load offset=6
       local.tee $3
       i32.const 16
       i32.shl
       i32.or
       i32.store offset=4
       local.get $0
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $1
       i32.load offset=10
       local.tee $3
       i32.const 16
       i32.shl
       i32.or
       i32.store offset=8
       local.get $0
       local.get $1
       i32.load offset=14
       local.tee $5
       i32.const 16
       i32.shl
       local.get $3
       i32.const 16
       i32.shr_u
       i32.or
       i32.store offset=12
       local.get $1
       i32.const 16
       i32.add
       local.set $1
       local.get $0
       i32.const 16
       i32.add
       local.set $0
       local.get $2
       i32.const 16
       i32.sub
       local.set $2
       br $while-continue|4
      end
     end
     br $break|2
    end
    local.get $1
    i32.load
    local.set $5
    local.get $0
    local.tee $3
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    local.tee $4
    i32.const 1
    i32.add
    local.set $1
    local.get $3
    local.get $4
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    loop $while-continue|5
     local.get $2
     i32.const 19
     i32.ge_u
     if
      local.get $0
      local.get $1
      i32.load offset=3
      local.tee $3
      i32.const 24
      i32.shl
      local.get $5
      i32.const 8
      i32.shr_u
      i32.or
      i32.store
      local.get $0
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $1
      i32.load offset=7
      local.tee $3
      i32.const 24
      i32.shl
      i32.or
      i32.store offset=4
      local.get $0
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $1
      i32.load offset=11
      local.tee $3
      i32.const 24
      i32.shl
      i32.or
      i32.store offset=8
      local.get $0
      local.get $1
      i32.load offset=15
      local.tee $5
      i32.const 24
      i32.shl
      local.get $3
      i32.const 8
      i32.shr_u
      i32.or
      i32.store offset=12
      local.get $1
      i32.const 16
      i32.add
      local.set $1
      local.get $0
      i32.const 16
      i32.add
      local.set $0
      local.get $2
      i32.const 16
      i32.sub
      local.set $2
      br $while-continue|5
     end
    end
   end
  end
  local.get $2
  i32.const 16
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $4
   i32.const 1
   i32.add
   local.set $1
   local.get $3
   local.get $4
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $4
   i32.const 1
   i32.add
   local.set $1
   local.get $3
   local.get $4
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $4
   i32.const 1
   i32.add
   local.set $1
   local.get $3
   local.get $4
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $4
   i32.const 1
   i32.add
   local.set $1
   local.get $3
   local.get $4
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $4
   i32.const 1
   i32.add
   local.set $1
   local.get $3
   local.get $4
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $4
   i32.const 1
   i32.add
   local.set $1
   local.get $3
   local.get $4
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $4
   i32.const 1
   i32.add
   local.set $1
   local.get $3
   local.get $4
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $4
   i32.const 1
   i32.add
   local.set $1
   local.get $3
   local.get $4
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 8
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $4
   i32.const 1
   i32.add
   local.set $1
   local.get $3
   local.get $4
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $4
   i32.const 1
   i32.add
   local.set $1
   local.get $3
   local.get $4
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $4
   i32.const 1
   i32.add
   local.set $1
   local.get $3
   local.get $4
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $4
   i32.const 1
   i32.add
   local.set $1
   local.get $3
   local.get $4
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 4
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $4
   i32.const 1
   i32.add
   local.set $1
   local.get $3
   local.get $4
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $4
   i32.const 1
   i32.add
   local.set $1
   local.get $3
   local.get $4
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $4
   i32.const 1
   i32.add
   local.set $1
   local.get $3
   local.get $4
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
  end
 )
 (func $~lib/memory/memory.copy (; 27 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $2
   local.set $4
   local.get $0
   local.get $1
   i32.eq
   br_if $~lib/util/memory/memmove|inlined.0
   i32.const 1
   local.get $0
   local.get $4
   i32.add
   local.get $1
   i32.le_u
   local.get $1
   local.get $4
   i32.add
   local.get $0
   i32.le_u
   select
   if
    local.get $0
    local.get $1
    local.get $4
    call $~lib/util/memory/memcpy
    br $~lib/util/memory/memmove|inlined.0
   end
   local.get $0
   local.get $1
   i32.lt_u
   if
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|0
      local.get $0
      i32.const 7
      i32.and
      if
       local.get $4
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $4
       i32.const 1
       i32.sub
       local.set $4
       local.get $0
       local.tee $2
       i32.const 1
       i32.add
       local.set $0
       local.get $1
       local.tee $3
       i32.const 1
       i32.add
       local.set $1
       local.get $2
       local.get $3
       i32.load8_u
       i32.store8
       br $while-continue|0
      end
     end
     loop $while-continue|1
      local.get $4
      i32.const 8
      i32.ge_u
      if
       local.get $0
       local.get $1
       i64.load
       i64.store
       local.get $4
       i32.const 8
       i32.sub
       local.set $4
       local.get $0
       i32.const 8
       i32.add
       local.set $0
       local.get $1
       i32.const 8
       i32.add
       local.set $1
       br $while-continue|1
      end
     end
    end
    loop $while-continue|2
     local.get $4
     if
      local.get $0
      local.tee $2
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      local.tee $3
      i32.const 1
      i32.add
      local.set $1
      local.get $2
      local.get $3
      i32.load8_u
      i32.store8
      local.get $4
      i32.const 1
      i32.sub
      local.set $4
      br $while-continue|2
     end
    end
   else
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|3
      local.get $0
      local.get $4
      i32.add
      i32.const 7
      i32.and
      if
       local.get $4
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $4
       i32.const 1
       i32.sub
       local.tee $4
       local.get $0
       i32.add
       local.get $1
       local.get $4
       i32.add
       i32.load8_u
       i32.store8
       br $while-continue|3
      end
     end
     loop $while-continue|4
      local.get $4
      i32.const 8
      i32.ge_u
      if
       local.get $4
       i32.const 8
       i32.sub
       local.tee $4
       local.get $0
       i32.add
       local.get $1
       local.get $4
       i32.add
       i64.load
       i64.store
       br $while-continue|4
      end
     end
    end
    loop $while-continue|5
     local.get $4
     if
      local.get $4
      i32.const 1
      i32.sub
      local.tee $4
      local.get $0
      i32.add
      local.get $1
      local.get $4
      i32.add
      i32.load8_u
      i32.store8
      br $while-continue|5
     end
    end
   end
  end
 )
 (func $~lib/rt/tlsf/reallocateBlock (; 28 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $2
  call $~lib/rt/tlsf/prepareSize
  local.tee $3
  local.get $1
  i32.load
  local.tee $5
  i32.const -4
  i32.and
  i32.le_u
  if
   local.get $0
   local.get $1
   local.get $3
   call $~lib/rt/tlsf/prepareBlock
   local.get $1
   local.get $2
   i32.store offset=12
   local.get $1
   return
  end
  local.get $1
  i32.const 16
  i32.add
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.add
  local.tee $6
  i32.load
  local.tee $4
  i32.const 1
  i32.and
  if
   local.get $5
   i32.const -4
   i32.and
   i32.const 16
   i32.add
   local.get $4
   i32.const -4
   i32.and
   i32.add
   local.tee $4
   local.get $3
   i32.ge_u
   if
    local.get $0
    local.get $6
    call $~lib/rt/tlsf/removeBlock
    local.get $1
    local.get $4
    local.get $5
    i32.const 3
    i32.and
    i32.or
    i32.store
    local.get $1
    local.get $2
    i32.store offset=12
    local.get $0
    local.get $1
    local.get $3
    call $~lib/rt/tlsf/prepareBlock
    local.get $1
    return
   end
  end
  local.get $0
  local.get $2
  local.get $1
  i32.load offset=8
  call $~lib/rt/tlsf/allocateBlock
  local.tee $3
  local.get $1
  i32.load offset=4
  i32.store offset=4
  local.get $3
  i32.const 16
  i32.add
  local.get $1
  i32.const 16
  i32.add
  local.get $2
  call $~lib/memory/memory.copy
  local.get $1
  i32.const 12252
  i32.ge_u
  if
   local.get $1
   local.get $1
   i32.load
   i32.const 1
   i32.or
   i32.store
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/insertBlock
  end
  local.get $3
 )
 (func $~lib/array/Array<assembly/bfs/Edge>#push (; 29 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.load offset=12
  local.tee $7
  i32.const 1
  i32.add
  local.tee $4
  local.set $2
  local.get $4
  local.get $0
  i32.load offset=8
  local.tee $3
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   local.get $2
   i32.const 268435452
   i32.gt_u
   if
    i32.const 1152
    i32.const 7456
    i32.const 14
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load
   local.set $5
   local.get $3
   call $~lib/rt/tlsf/maybeInitialize
   local.get $5
   i32.const 16
   i32.sub
   local.get $2
   i32.const 2
   i32.shl
   local.tee $6
   call $~lib/rt/tlsf/reallocateBlock
   i32.const 16
   i32.add
   local.tee $2
   i32.add
   local.get $6
   local.get $3
   i32.sub
   call $~lib/memory/memory.fill
   local.get $2
   local.get $5
   i32.ne
   if
    local.get $0
    local.get $2
    i32.store
    local.get $0
    local.get $2
    i32.store offset=4
   end
   local.get $0
   local.get $6
   i32.store offset=8
  end
  local.get $0
  i32.load offset=4
  local.get $7
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.const 12252
  i32.gt_u
  if
   local.get $1
   i32.const 16
   i32.sub
   local.tee $3
   local.get $3
   i32.load offset=4
   i32.const 1
   i32.add
   i32.store offset=4
  end
  local.get $1
  i32.store
  local.get $0
  local.get $4
  i32.store offset=12
 )
 (func $assembly/bfs/Graph#constructor (; 30 ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (result i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  call $~lib/rt/tlsf/maybeInitialize
  i32.const 24
  i32.const 6
  call $~lib/rt/tlsf/allocateBlock
  i32.const 16
  i32.add
  local.tee $7
  i32.const 12252
  i32.gt_u
  if
   local.get $7
   i32.const 16
   i32.sub
   local.tee $6
   local.get $6
   i32.load offset=4
   i32.const 1
   i32.add
   i32.store offset=4
  end
  local.get $7
  local.set $6
  local.get $0
  i32.const 12252
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   local.tee $8
   local.get $8
   i32.load offset=4
   i32.const 1
   i32.add
   i32.store offset=4
  end
  local.get $6
  local.get $0
  i32.store
  local.get $1
  i32.const 12252
  i32.gt_u
  if
   local.get $1
   i32.const 16
   i32.sub
   local.tee $0
   local.get $0
   i32.load offset=4
   i32.const 1
   i32.add
   i32.store offset=4
  end
  local.get $6
  local.get $1
  i32.store offset=4
  local.get $2
  i32.const 12252
  i32.gt_u
  if
   local.get $2
   i32.const 16
   i32.sub
   local.tee $0
   local.get $0
   i32.load offset=4
   i32.const 1
   i32.add
   i32.store offset=4
  end
  local.get $6
  local.get $2
  i32.store offset=8
  local.get $3
  i32.const 12252
  i32.gt_u
  if
   local.get $3
   i32.const 16
   i32.sub
   local.tee $0
   local.get $0
   i32.load offset=4
   i32.const 1
   i32.add
   i32.store offset=4
  end
  local.get $6
  local.get $3
  i32.store offset=12
  local.get $4
  i32.const 12252
  i32.gt_u
  if
   local.get $4
   i32.const 16
   i32.sub
   local.tee $0
   local.get $0
   i32.load offset=4
   i32.const 1
   i32.add
   i32.store offset=4
  end
  local.get $6
  local.get $4
  i32.store offset=16
  local.get $5
  i32.const 12252
  i32.gt_u
  if
   local.get $5
   i32.const 16
   i32.sub
   local.tee $0
   local.get $0
   i32.load offset=4
   i32.const 1
   i32.add
   i32.store offset=4
  end
  local.get $6
  local.get $5
  i32.store offset=20
  local.get $6
 )
 (func $assembly/bfs/initializeGraph (; 31 ;) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 f64)
  (local $16 i32)
  (local $17 f64)
  (local $18 f64)
  call $~lib/rt/tlsf/maybeInitialize
  i32.const 2000000
  i32.const 8
  call $~lib/rt/tlsf/allocateBlock
  i32.const 16
  i32.add
  local.tee $8
  i32.const 2000000
  call $~lib/memory/memory.fill
  local.get $8
  i32.const 12252
  i32.gt_u
  if
   local.get $8
   i32.const 16
   i32.sub
   local.tee $0
   local.get $0
   i32.load offset=4
   i32.const 1
   i32.add
   i32.store offset=4
  end
  call $~lib/staticarray/StaticArray<bool>#constructor
  local.set $10
  call $~lib/staticarray/StaticArray<bool>#constructor
  local.set $13
  call $~lib/staticarray/StaticArray<bool>#constructor
  local.set $11
  i32.const 500000
  call $~lib/staticarray/StaticArray<i32>#constructor
  local.set $12
  call $~lib/rt/tlsf/maybeInitialize
  i32.const 2000000
  i32.const 13
  call $~lib/rt/tlsf/allocateBlock
  i32.const 16
  i32.add
  local.tee $0
  i32.const 2000000
  call $~lib/memory/memory.fill
  local.get $0
  i32.const 12252
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   local.tee $3
   local.get $3
   i32.load offset=4
   i32.const 1
   i32.add
   i32.store offset=4
  end
  local.get $0
  local.set $2
  loop $for-loop|0
   local.get $1
   i32.const 500000
   i32.lt_s
   if
    local.get $2
    local.get $1
    call $~lib/array/Array<assembly/bfs/Edge>#constructor
    local.tee $0
    call $~lib/staticarray/StaticArray<~lib/array/Array<assembly/bfs/Edge>>#__unchecked_set
    local.get $0
    i32.const 12252
    i32.gt_u
    if
     local.get $0
     i32.const 16
     i32.sub
     call $~lib/rt/pure/decrement
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  i32.const 0
  local.set $1
  loop $for-loop|1
   local.get $1
   i32.const 500000
   i32.lt_s
   if
    global.get $assembly/common/seed
    local.tee $0
    i32.const 2127912214
    i32.add
    local.get $0
    i32.const 12
    i32.shl
    i32.add
    global.set $assembly/common/seed
    global.get $assembly/common/seed
    local.tee $0
    i32.const -949894596
    i32.xor
    local.get $0
    i32.const 19
    i32.shr_u
    i32.xor
    global.set $assembly/common/seed
    global.get $assembly/common/seed
    local.tee $0
    i32.const 374761393
    i32.add
    local.get $0
    i32.const 5
    i32.shl
    i32.add
    global.set $assembly/common/seed
    global.get $assembly/common/seed
    local.tee $0
    i32.const -744332180
    i32.add
    local.get $0
    i32.const 9
    i32.shl
    i32.xor
    global.set $assembly/common/seed
    global.get $assembly/common/seed
    local.tee $0
    i32.const -42973499
    i32.add
    local.get $0
    i32.const 3
    i32.shl
    i32.add
    global.set $assembly/common/seed
    global.get $assembly/common/seed
    local.tee $0
    i32.const -1252372727
    i32.xor
    local.get $0
    i32.const 16
    i32.shr_u
    i32.xor
    global.set $assembly/common/seed
    global.get $assembly/common/seed
    i32.const 3
    i32.rem_s
    f64.convert_i32_s
    f64.abs
    f64.const 2
    f64.add
    local.set $17
    local.get $2
    local.get $1
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $0
    i32.const 12252
    i32.gt_u
    if
     local.get $0
     i32.const 16
     i32.sub
     local.tee $3
     local.get $3
     i32.load offset=4
     i32.const 1
     i32.add
     i32.store offset=4
    end
    i32.const 0
    local.set $7
    loop $for-loop|2
     local.get $7
     f64.convert_i32_s
     local.get $17
     f64.lt
     if
      global.get $assembly/common/seed
      local.tee $3
      i32.const 2127912214
      i32.add
      local.get $3
      i32.const 12
      i32.shl
      i32.add
      global.set $assembly/common/seed
      global.get $assembly/common/seed
      local.tee $3
      i32.const -949894596
      i32.xor
      local.get $3
      i32.const 19
      i32.shr_u
      i32.xor
      global.set $assembly/common/seed
      global.get $assembly/common/seed
      local.tee $3
      i32.const 374761393
      i32.add
      local.get $3
      i32.const 5
      i32.shl
      i32.add
      global.set $assembly/common/seed
      global.get $assembly/common/seed
      local.tee $3
      i32.const -744332180
      i32.add
      local.get $3
      i32.const 9
      i32.shl
      i32.xor
      global.set $assembly/common/seed
      global.get $assembly/common/seed
      local.tee $3
      i32.const -42973499
      i32.add
      local.get $3
      i32.const 3
      i32.shl
      i32.add
      global.set $assembly/common/seed
      global.get $assembly/common/seed
      local.tee $3
      i32.const -1252372727
      i32.xor
      local.get $3
      i32.const 16
      i32.shr_u
      i32.xor
      global.set $assembly/common/seed
      global.get $assembly/common/seed
      local.tee $3
      i32.const 500000
      i32.rem_s
      f64.convert_i32_s
      f64.abs
      local.set $15
      local.get $3
      i32.const 2127912214
      i32.add
      local.get $3
      i32.const 12
      i32.shl
      i32.add
      global.set $assembly/common/seed
      global.get $assembly/common/seed
      local.tee $3
      i32.const -949894596
      i32.xor
      local.get $3
      i32.const 19
      i32.shr_u
      i32.xor
      global.set $assembly/common/seed
      global.get $assembly/common/seed
      local.tee $3
      i32.const 374761393
      i32.add
      local.get $3
      i32.const 5
      i32.shl
      i32.add
      global.set $assembly/common/seed
      global.get $assembly/common/seed
      local.tee $3
      i32.const -744332180
      i32.add
      local.get $3
      i32.const 9
      i32.shl
      i32.xor
      global.set $assembly/common/seed
      global.get $assembly/common/seed
      local.tee $3
      i32.const -42973499
      i32.add
      local.get $3
      i32.const 3
      i32.shl
      i32.add
      global.set $assembly/common/seed
      global.get $assembly/common/seed
      local.tee $3
      i32.const -1252372727
      i32.xor
      local.get $3
      i32.const 16
      i32.shr_u
      i32.xor
      global.set $assembly/common/seed
      local.get $0
      local.get $15
      global.get $assembly/common/seed
      i32.const 1
      i32.rem_s
      f64.convert_i32_s
      f64.abs
      f64.const 1
      f64.add
      local.tee $18
      call $assembly/bfs/Edge#constructor
      local.tee $9
      call $~lib/array/Array<assembly/bfs/Edge>#push
      local.get $2
      local.get $15
      i32.trunc_f64_s
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.tee $4
      i32.const 12252
      i32.gt_u
      if
       local.get $4
       i32.const 16
       i32.sub
       local.tee $3
       local.get $3
       i32.load offset=4
       i32.const 1
       i32.add
       i32.store offset=4
      end
      local.get $4
      local.get $1
      f64.convert_i32_s
      local.get $18
      call $assembly/bfs/Edge#constructor
      local.tee $3
      call $~lib/array/Array<assembly/bfs/Edge>#push
      local.get $9
      i32.const 12252
      i32.gt_u
      if
       local.get $9
       i32.const 16
       i32.sub
       call $~lib/rt/pure/decrement
      end
      local.get $4
      i32.const 12252
      i32.gt_u
      if
       local.get $4
       i32.const 16
       i32.sub
       call $~lib/rt/pure/decrement
      end
      local.get $3
      i32.const 12252
      i32.gt_u
      if
       local.get $3
       i32.const 16
       i32.sub
       call $~lib/rt/pure/decrement
      end
      local.get $7
      i32.const 1
      i32.add
      local.set $7
      br $for-loop|2
     end
    end
    local.get $0
    i32.const 12252
    i32.gt_u
    if
     local.get $0
     i32.const 16
     i32.sub
     call $~lib/rt/pure/decrement
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|1
   end
  end
  i32.const 0
  local.set $1
  loop $for-loop|3
   local.get $5
   i32.const 500000
   i32.lt_s
   if
    local.get $2
    local.get $5
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $4
    i32.const 12252
    i32.gt_u
    if
     local.get $4
     i32.const 16
     i32.sub
     local.tee $0
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.add
     i32.store offset=4
    end
    local.get $1
    local.set $0
    local.get $4
    i32.load offset=12
    local.tee $7
    local.set $9
    call $~lib/rt/tlsf/maybeInitialize
    i32.const 8
    i32.const 7
    call $~lib/rt/tlsf/allocateBlock
    i32.const 16
    i32.add
    local.tee $3
    i32.const 12252
    i32.gt_u
    if
     local.get $3
     i32.const 16
     i32.sub
     local.tee $1
     local.get $1
     i32.load offset=4
     i32.const 1
     i32.add
     i32.store offset=4
    end
    local.get $3
    local.get $0
    i32.store
    local.get $3
    local.get $9
    i32.store offset=4
    local.get $8
    local.get $5
    local.get $3
    call $~lib/staticarray/StaticArray<~lib/array/Array<assembly/bfs/Edge>>#__unchecked_set
    local.get $5
    local.get $10
    i32.add
    i32.const 0
    i32.store8
    local.get $5
    local.get $13
    i32.add
    i32.const 0
    i32.store8
    local.get $5
    local.get $11
    i32.add
    i32.const 0
    i32.store8
    local.get $0
    local.get $7
    i32.add
    local.set $1
    local.get $4
    i32.const 12252
    i32.gt_u
    if
     local.get $4
     i32.const 16
     i32.sub
     call $~lib/rt/pure/decrement
    end
    local.get $3
    i32.const 12252
    i32.gt_u
    if
     local.get $3
     i32.const 16
     i32.sub
     call $~lib/rt/pure/decrement
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|3
   end
  end
  local.get $10
  i32.const 1
  i32.store8
  local.get $11
  i32.const 1
  i32.store8
  local.get $1
  call $~lib/staticarray/StaticArray<i32>#constructor
  local.set $14
  loop $for-loop|4
   local.get $6
   i32.const 500000
   i32.lt_s
   if
    local.get $2
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $5
    i32.const 12252
    i32.gt_u
    if
     local.get $5
     i32.const 16
     i32.sub
     local.tee $0
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.add
     i32.store offset=4
    end
    local.get $5
    i32.load offset=12
    local.set $7
    local.get $2
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $0
    i32.const 12252
    i32.gt_u
    if
     local.get $0
     i32.const 16
     i32.sub
     local.tee $3
     local.get $3
     i32.load offset=4
     i32.const 1
     i32.add
     i32.store offset=4
    end
    i32.const 0
    local.set $1
    loop $for-loop|5
     local.get $1
     local.get $7
     i32.lt_s
     if
      local.get $14
      local.get $16
      i32.const 2
      i32.shl
      i32.add
      local.get $0
      i32.load offset=4
      local.get $1
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.tee $4
      i32.const 12252
      i32.gt_u
      if
       local.get $4
       i32.const 16
       i32.sub
       local.tee $3
       local.get $3
       i32.load offset=4
       i32.const 1
       i32.add
       i32.store offset=4
      end
      local.get $4
      f64.load
      i32.trunc_f64_s
      i32.store
      local.get $16
      i32.const 1
      i32.add
      local.set $16
      local.get $4
      i32.const 12252
      i32.gt_u
      if
       local.get $4
       i32.const 16
       i32.sub
       call $~lib/rt/pure/decrement
      end
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|5
     end
    end
    local.get $5
    i32.const 12252
    i32.gt_u
    if
     local.get $5
     i32.const 16
     i32.sub
     call $~lib/rt/pure/decrement
    end
    local.get $0
    i32.const 12252
    i32.gt_u
    if
     local.get $0
     i32.const 16
     i32.sub
     call $~lib/rt/pure/decrement
    end
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $for-loop|4
   end
  end
  i32.const 0
  local.set $6
  loop $for-loop|6
   local.get $6
   i32.const 500000
   i32.lt_s
   if
    local.get $12
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    i32.const -1
    i32.store
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $for-loop|6
   end
  end
  local.get $12
  i32.const 0
  i32.store
  local.get $8
  local.get $10
  local.get $13
  local.get $11
  local.get $12
  local.get $14
  call $assembly/bfs/Graph#constructor
  local.get $8
  i32.const 12252
  i32.gt_u
  if
   local.get $8
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
  local.get $10
  i32.const 12252
  i32.gt_u
  if
   local.get $10
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
  local.get $13
  i32.const 12252
  i32.gt_u
  if
   local.get $13
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
  local.get $11
  i32.const 12252
  i32.gt_u
  if
   local.get $11
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
  local.get $12
  i32.const 12252
  i32.gt_u
  if
   local.get $12
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
  local.get $2
  i32.const 12252
  i32.gt_u
  if
   local.get $2
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
  local.get $14
  i32.const 12252
  i32.gt_u
  if
   local.get $14
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
 )
 (func $assembly/bfs/bfs (; 32 ;) (result f64)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 f64)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  call $assembly/bfs/initializeGraph
  local.tee $2
  i32.load
  local.set $7
  local.get $2
  i32.load offset=4
  local.set $8
  local.get $2
  i32.load offset=8
  local.set $9
  local.get $2
  i32.load offset=12
  local.set $13
  local.get $2
  i32.load offset=16
  local.set $14
  local.get $2
  i32.load offset=20
  local.set $15
  call $assembly/common/performanceNow
  local.set $10
  loop $do-continue|0
   i32.const 0
   local.set $11
   i32.const 0
   local.set $0
   loop $for-loop|1
    local.get $0
    i32.const 500000
    i32.lt_s
    if
     local.get $0
     local.get $8
     i32.add
     i32.load8_u
     if
      local.get $0
      local.get $8
      i32.add
      i32.const 0
      i32.store8
      local.get $14
      local.get $0
      i32.const 2
      i32.shl
      local.tee $1
      i32.add
      i32.load
      local.set $16
      local.get $1
      local.get $7
      i32.add
      i32.load
      local.tee $3
      i32.const 12252
      i32.gt_u
      if
       local.get $3
       i32.const 16
       i32.sub
       local.tee $1
       local.get $1
       i32.load offset=4
       i32.const 1
       i32.add
       i32.store offset=4
      end
      local.get $3
      i32.load
      local.set $4
      local.get $7
      local.get $0
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.tee $5
      i32.const 12252
      i32.gt_u
      if
       local.get $5
       i32.const 16
       i32.sub
       local.tee $1
       local.get $1
       i32.load offset=4
       i32.const 1
       i32.add
       i32.store offset=4
      end
      local.get $5
      i32.load offset=4
      local.get $7
      local.get $0
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.tee $1
      i32.const 12252
      i32.gt_u
      if
       local.get $1
       i32.const 16
       i32.sub
       local.tee $12
       local.get $12
       i32.load offset=4
       i32.const 1
       i32.add
       i32.store offset=4
      end
      local.get $1
      i32.load
      i32.add
      local.set $12
      loop $for-loop|2
       local.get $4
       local.get $12
       i32.lt_s
       if
        local.get $13
        local.get $15
        local.get $4
        i32.const 2
        i32.shl
        i32.add
        i32.load
        local.tee $6
        i32.add
        i32.load8_u
        i32.eqz
        if
         local.get $14
         local.get $6
         i32.const 2
         i32.shl
         i32.add
         local.get $16
         i32.const 1
         i32.add
         i32.store
         local.get $6
         local.get $9
         i32.add
         i32.const 1
         i32.store8
        end
        local.get $4
        i32.const 1
        i32.add
        local.set $4
        br $for-loop|2
       end
      end
      local.get $3
      i32.const 12252
      i32.gt_u
      if
       local.get $3
       i32.const 16
       i32.sub
       call $~lib/rt/pure/decrement
      end
      local.get $5
      i32.const 12252
      i32.gt_u
      if
       local.get $5
       i32.const 16
       i32.sub
       call $~lib/rt/pure/decrement
      end
      local.get $1
      i32.const 12252
      i32.gt_u
      if
       local.get $1
       i32.const 16
       i32.sub
       call $~lib/rt/pure/decrement
      end
     end
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|1
    end
   end
   i32.const 0
   local.set $0
   loop $for-loop|3
    local.get $0
    i32.const 500000
    i32.lt_s
    if
     local.get $0
     local.get $9
     i32.add
     i32.load8_u
     if
      local.get $0
      local.get $8
      i32.add
      i32.const 1
      i32.store8
      local.get $0
      local.get $13
      i32.add
      i32.const 1
      i32.store8
      local.get $0
      local.get $9
      i32.add
      i32.const 0
      i32.store8
      i32.const 1
      local.set $11
     end
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|3
    end
   end
   local.get $17
   i32.const 1
   i32.add
   local.set $17
   local.get $11
   br_if $do-continue|0
  end
  call $assembly/common/performanceNow
  local.get $10
  f64.sub
  local.get $2
  i32.const 12252
  i32.gt_u
  if
   local.get $2
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
 )
 (func $~lib/staticarray/StaticArray<assembly/fft/PolarArray>#constructor (; 33 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 268435452
  i32.gt_u
  if
   i32.const 1152
   i32.const 1200
   i32.const 83
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/rt/tlsf/maybeInitialize
  local.get $0
  i32.const 2
  i32.shl
  local.tee $1
  i32.const 15
  call $~lib/rt/tlsf/allocateBlock
  i32.const 16
  i32.add
  local.tee $0
  local.get $1
  call $~lib/memory/memory.fill
  local.get $0
  i32.const 12252
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   local.tee $1
   local.get $1
   i32.load offset=4
   i32.const 1
   i32.add
   i32.store offset=4
  end
  local.get $0
 )
 (func $assembly/fft/PolarArray#constructor (; 34 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  call $~lib/rt/tlsf/maybeInitialize
  i32.const 8
  i32.const 14
  call $~lib/rt/tlsf/allocateBlock
  i32.const 16
  i32.add
  local.tee $3
  i32.const 12252
  i32.gt_u
  if
   local.get $3
   i32.const 16
   i32.sub
   local.tee $2
   local.get $2
   i32.load offset=4
   i32.const 1
   i32.add
   i32.store offset=4
  end
  local.get $3
  local.set $2
  local.get $0
  i32.const 12252
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   local.tee $4
   local.get $4
   i32.load offset=4
   i32.const 1
   i32.add
   i32.store offset=4
  end
  local.get $2
  local.get $0
  i32.store
  local.get $1
  i32.const 12252
  i32.gt_u
  if
   local.get $1
   i32.const 16
   i32.sub
   local.tee $0
   local.get $0
   i32.load offset=4
   i32.const 1
   i32.add
   i32.store offset=4
  end
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $2
 )
 (func $assembly/fft/randomComplexArray (; 35 ;) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 256
  call $~lib/staticarray/StaticArray<f64>#constructor
  local.set $2
  i32.const 256
  call $~lib/staticarray/StaticArray<f64>#constructor
  local.set $3
  loop $for-loop|0
   local.get $1
   i32.const 256
   i32.lt_s
   if
    global.get $assembly/common/seed
    local.tee $0
    i32.const 2127912214
    i32.add
    local.get $0
    i32.const 12
    i32.shl
    i32.add
    global.set $assembly/common/seed
    global.get $assembly/common/seed
    local.tee $0
    i32.const -949894596
    i32.xor
    local.get $0
    i32.const 19
    i32.shr_u
    i32.xor
    global.set $assembly/common/seed
    global.get $assembly/common/seed
    local.tee $0
    i32.const 374761393
    i32.add
    local.get $0
    i32.const 5
    i32.shl
    i32.add
    global.set $assembly/common/seed
    global.get $assembly/common/seed
    local.tee $0
    i32.const -744332180
    i32.add
    local.get $0
    i32.const 9
    i32.shl
    i32.xor
    global.set $assembly/common/seed
    global.get $assembly/common/seed
    local.tee $0
    i32.const -42973499
    i32.add
    local.get $0
    i32.const 3
    i32.shl
    i32.add
    global.set $assembly/common/seed
    global.get $assembly/common/seed
    local.tee $0
    i32.const -1252372727
    i32.xor
    local.get $0
    i32.const 16
    i32.shr_u
    i32.xor
    global.set $assembly/common/seed
    local.get $2
    local.get $1
    i32.const 3
    i32.shl
    i32.add
    global.get $assembly/common/seed
    f64.convert_i32_s
    f64.abs
    f64.const 2
    f64.mul
    f64.const 1
    f64.sub
    f64.store
    global.get $assembly/common/seed
    local.tee $0
    i32.const 2127912214
    i32.add
    local.get $0
    i32.const 12
    i32.shl
    i32.add
    global.set $assembly/common/seed
    global.get $assembly/common/seed
    local.tee $0
    i32.const -949894596
    i32.xor
    local.get $0
    i32.const 19
    i32.shr_u
    i32.xor
    global.set $assembly/common/seed
    global.get $assembly/common/seed
    local.tee $0
    i32.const 374761393
    i32.add
    local.get $0
    i32.const 5
    i32.shl
    i32.add
    global.set $assembly/common/seed
    global.get $assembly/common/seed
    local.tee $0
    i32.const -744332180
    i32.add
    local.get $0
    i32.const 9
    i32.shl
    i32.xor
    global.set $assembly/common/seed
    global.get $assembly/common/seed
    local.tee $0
    i32.const -42973499
    i32.add
    local.get $0
    i32.const 3
    i32.shl
    i32.add
    global.set $assembly/common/seed
    global.get $assembly/common/seed
    local.tee $0
    i32.const -1252372727
    i32.xor
    local.get $0
    i32.const 16
    i32.shr_u
    i32.xor
    global.set $assembly/common/seed
    local.get $3
    local.get $1
    i32.const 3
    i32.shl
    i32.add
    global.get $assembly/common/seed
    f64.convert_i32_s
    f64.abs
    f64.const 2
    f64.mul
    f64.const 1
    f64.sub
    f64.store
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $2
  local.get $3
  call $assembly/fft/PolarArray#constructor
  local.get $2
  i32.const 12252
  i32.gt_u
  if
   local.get $2
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
  local.get $3
  i32.const 12252
  i32.gt_u
  if
   local.get $3
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
 )
 (func $~lib/staticarray/StaticArray<f64>#__get (; 36 ;) (param $0 i32) (result f64)
  i32.const 0
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 7504
   i32.const 1200
   i32.const 95
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f64.load
 )
 (func $~lib/staticarray/StaticArray<f64>#__set (; 37 ;) (param $0 i32) (param $1 f64)
  i32.const 0
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 7504
   i32.const 1200
   i32.const 110
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  f64.store
 )
 (func $~lib/math/pio2_large_quot (; 38 ;) (param $0 i64) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  (local $10 i64)
  (local $11 i64)
  (local $12 f64)
  local.get $0
  i64.const 9223372036854775807
  i64.and
  i64.const 52
  i64.shr_s
  i64.const 1045
  i64.sub
  local.tee $2
  i64.const 6
  i64.shr_s
  i32.wrap_i64
  i32.const 3
  i32.shl
  i32.const 7568
  i32.add
  local.tee $7
  i64.load
  local.set $5
  local.get $7
  i64.load offset=8
  local.set $3
  local.get $7
  i64.load offset=16
  local.set $4
  local.get $2
  i64.const 63
  i64.and
  local.tee $2
  i64.const 0
  i64.ne
  if
   local.get $5
   local.get $2
   i64.shl
   local.get $3
   i64.const 64
   local.get $2
   i64.sub
   local.tee $1
   i64.shr_u
   i64.or
   local.set $5
   local.get $3
   local.get $2
   i64.shl
   local.get $4
   local.get $1
   i64.shr_u
   i64.or
   local.set $3
   local.get $4
   local.get $2
   i64.shl
   local.get $7
   i64.load offset=24
   local.get $1
   i64.shr_u
   i64.or
   local.set $4
  end
  local.get $0
  i64.const 4503599627370495
  i64.and
  i64.const 4503599627370496
  i64.or
  local.tee $2
  i64.const 4294967295
  i64.and
  local.tee $1
  local.get $3
  i64.const 32
  i64.shr_u
  local.tee $8
  i64.mul
  local.get $1
  local.get $3
  i64.const 4294967295
  i64.and
  local.tee $1
  i64.mul
  local.tee $6
  i64.const 32
  i64.shr_u
  i64.add
  local.set $3
  local.get $2
  i64.const 32
  i64.shr_u
  local.tee $9
  local.get $1
  i64.mul
  local.get $3
  i64.const 4294967295
  i64.and
  i64.add
  local.set $1
  local.get $8
  local.get $9
  i64.mul
  local.get $3
  i64.const 32
  i64.shr_u
  i64.add
  local.get $1
  i64.const 32
  i64.shr_u
  i64.add
  global.set $~lib/math/res128_hi
  global.get $~lib/math/res128_hi
  local.get $2
  local.get $5
  i64.mul
  i64.add
  local.get $4
  i64.const 32
  i64.shr_u
  local.get $2
  i64.const 32
  i64.shr_s
  i64.mul
  local.tee $3
  local.get $6
  i64.const 4294967295
  i64.and
  local.get $1
  i64.const 32
  i64.shl
  i64.add
  i64.add
  local.tee $2
  local.get $3
  i64.lt_u
  i64.extend_i32_u
  i64.add
  local.tee $8
  i64.const 2
  i64.shl
  local.get $2
  i64.const 62
  i64.shr_u
  i64.or
  local.tee $5
  i64.const 63
  i64.shr_s
  local.tee $4
  i64.const 1
  i64.shr_s
  local.get $5
  i64.xor
  local.tee $1
  i64.clz
  local.set $3
  local.get $1
  local.get $3
  i64.shl
  local.get $4
  local.get $2
  i64.const 2
  i64.shl
  i64.xor
  local.tee $6
  i64.const 64
  local.get $3
  i64.sub
  i64.shr_u
  i64.or
  local.tee $2
  i64.const 4294967295
  i64.and
  local.set $1
  local.get $2
  i64.const 32
  i64.shr_u
  local.tee $9
  i64.const 560513588
  i64.mul
  local.get $1
  i64.const 3373259426
  i64.mul
  local.get $1
  i64.const 560513588
  i64.mul
  local.tee $10
  i64.const 32
  i64.shr_u
  i64.add
  local.tee $11
  i64.const 4294967295
  i64.and
  i64.add
  local.set $1
  local.get $9
  i64.const 3373259426
  i64.mul
  local.get $11
  i64.const 32
  i64.shr_u
  i64.add
  local.get $1
  i64.const 32
  i64.shr_u
  i64.add
  global.set $~lib/math/res128_hi
  local.get $10
  i64.const 4294967295
  i64.and
  local.get $1
  i64.const 32
  i64.shl
  i64.add
  local.tee $1
  f64.const 3.753184150245214e-04
  local.get $2
  f64.convert_i64_u
  f64.mul
  f64.const 3.834951969714103e-04
  local.get $6
  local.get $3
  i64.shl
  f64.convert_i64_u
  f64.mul
  f64.add
  i64.trunc_f64_u
  local.tee $2
  i64.lt_u
  i64.extend_i32_u
  global.get $~lib/math/res128_hi
  local.tee $6
  i64.const 11
  i64.shr_u
  i64.add
  f64.convert_i64_u
  global.set $~lib/math/rempio2_y0
  f64.const 5.421010862427522e-20
  local.get $2
  local.get $6
  i64.const 53
  i64.shl
  local.get $1
  i64.const 11
  i64.shr_u
  i64.or
  i64.add
  f64.convert_i64_u
  f64.mul
  global.set $~lib/math/rempio2_y1
  global.get $~lib/math/rempio2_y0
  i64.const 4372995238176751616
  local.get $3
  i64.const 52
  i64.shl
  i64.sub
  local.get $0
  local.get $5
  i64.xor
  i64.const -9223372036854775808
  i64.and
  i64.or
  f64.reinterpret_i64
  local.tee $12
  f64.mul
  global.set $~lib/math/rempio2_y0
  global.get $~lib/math/rempio2_y1
  local.get $12
  f64.mul
  global.set $~lib/math/rempio2_y1
  local.get $8
  i64.const 62
  i64.shr_s
  local.get $4
  i64.sub
  i32.wrap_i64
 )
 (func $~lib/math/NativeMath.cos (; 39 ;) (param $0 f64) (result f64)
  (local $1 i64)
  (local $2 f64)
  (local $3 f64)
  (local $4 f64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f64)
  local.get $0
  i64.reinterpret_f64
  local.tee $1
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.tee $5
  i32.const 31
  i32.shr_u
  local.set $6
  local.get $5
  i32.const 2147483647
  i32.and
  local.tee $5
  i32.const 1072243195
  i32.le_u
  if
   local.get $5
   i32.const 1044816030
   i32.lt_u
   if
    f64.const 1
    return
   end
   f64.const 1
   f64.const 0.5
   local.get $0
   local.get $0
   f64.mul
   local.tee $2
   f64.mul
   local.tee $3
   f64.sub
   local.tee $4
   f64.const 1
   local.get $4
   f64.sub
   local.get $3
   f64.sub
   local.get $2
   local.get $2
   f64.const 0.0416666666666666
   local.get $2
   f64.const -0.001388888888887411
   local.get $2
   f64.const 2.480158728947673e-05
   f64.mul
   f64.add
   f64.mul
   f64.add
   f64.mul
   local.get $2
   local.get $2
   f64.mul
   local.tee $3
   local.get $3
   f64.mul
   f64.const -2.7557314351390663e-07
   local.get $2
   f64.const 2.087572321298175e-09
   local.get $2
   f64.const -1.1359647557788195e-11
   f64.mul
   f64.add
   f64.mul
   f64.add
   f64.mul
   f64.add
   f64.mul
   local.get $0
   f64.const 0
   f64.mul
   f64.sub
   f64.add
   f64.add
   return
  end
  local.get $5
  i32.const 2146435072
  i32.ge_u
  if
   local.get $0
   local.get $0
   f64.sub
   return
  end
  block $~lib/math/rempio2|inlined.0 (result i32)
   local.get $1
   i64.const 32
   i64.shr_u
   i32.wrap_i64
   i32.const 2147483647
   i32.and
   local.tee $7
   i32.const 1073928572
   i32.lt_u
   if
    i32.const 1
    local.set $5
    local.get $6
    if (result f64)
     local.get $0
     f64.const 1.5707963267341256
     f64.add
     local.set $0
     i32.const -1
     local.set $5
     local.get $7
     i32.const 1073291771
     i32.ne
     if (result f64)
      local.get $0
      local.get $0
      f64.const 6.077100506506192e-11
      f64.add
      local.tee $0
      f64.sub
      f64.const 6.077100506506192e-11
      f64.add
     else
      local.get $0
      f64.const 6.077100506303966e-11
      f64.add
      local.tee $2
      f64.const 2.0222662487959506e-21
      f64.add
      local.set $0
      local.get $2
      local.get $0
      f64.sub
      f64.const 2.0222662487959506e-21
      f64.add
     end
    else
     local.get $0
     f64.const 1.5707963267341256
     f64.sub
     local.set $0
     local.get $7
     i32.const 1073291771
     i32.ne
     if (result f64)
      local.get $0
      local.get $0
      f64.const 6.077100506506192e-11
      f64.sub
      local.tee $0
      f64.sub
      f64.const 6.077100506506192e-11
      f64.sub
     else
      local.get $0
      f64.const 6.077100506303966e-11
      f64.sub
      local.tee $2
      f64.const 2.0222662487959506e-21
      f64.sub
      local.set $0
      local.get $2
      local.get $0
      f64.sub
      f64.const 2.0222662487959506e-21
      f64.sub
     end
    end
    local.get $0
    global.set $~lib/math/rempio2_y0
    global.set $~lib/math/rempio2_y1
    local.get $5
    br $~lib/math/rempio2|inlined.0
   end
   local.get $7
   i32.const 1094263291
   i32.lt_u
   if
    local.get $7
    i32.const 20
    i32.shr_u
    local.tee $6
    local.get $0
    local.get $0
    f64.const 0.6366197723675814
    f64.mul
    f64.nearest
    local.tee $2
    f64.const 1.5707963267341256
    f64.mul
    f64.sub
    local.tee $0
    local.get $2
    f64.const 6.077100506506192e-11
    f64.mul
    local.tee $3
    f64.sub
    local.tee $4
    i64.reinterpret_f64
    i64.const 32
    i64.shr_u
    i32.wrap_i64
    i32.const 20
    i32.shr_u
    i32.const 2047
    i32.and
    i32.sub
    i32.const 16
    i32.gt_u
    if
     local.get $2
     f64.const 2.0222662487959506e-21
     f64.mul
     local.get $0
     local.get $0
     local.get $2
     f64.const 6.077100506303966e-11
     f64.mul
     local.tee $3
     f64.sub
     local.tee $0
     f64.sub
     local.get $3
     f64.sub
     f64.sub
     local.set $3
     local.get $6
     local.get $0
     local.get $3
     f64.sub
     local.tee $4
     i64.reinterpret_f64
     i64.const 32
     i64.shr_u
     i32.wrap_i64
     i32.const 20
     i32.shr_u
     i32.const 2047
     i32.and
     i32.sub
     i32.const 49
     i32.gt_u
     if
      local.get $2
      f64.const 8.4784276603689e-32
      f64.mul
      local.get $0
      local.get $0
      local.get $2
      f64.const 2.0222662487111665e-21
      f64.mul
      local.tee $3
      f64.sub
      local.tee $0
      f64.sub
      local.get $3
      f64.sub
      f64.sub
      local.set $3
      local.get $0
      local.get $3
      f64.sub
      local.set $4
     end
    end
    local.get $4
    global.set $~lib/math/rempio2_y0
    local.get $0
    local.get $4
    f64.sub
    local.get $3
    f64.sub
    global.set $~lib/math/rempio2_y1
    local.get $2
    i32.trunc_f64_s
    br $~lib/math/rempio2|inlined.0
   end
   i32.const 0
   local.get $1
   call $~lib/math/pio2_large_quot
   local.tee $5
   i32.sub
   local.get $5
   local.get $6
   select
  end
  local.set $6
  global.get $~lib/math/rempio2_y0
  local.set $0
  global.get $~lib/math/rempio2_y1
  local.set $2
  local.get $6
  i32.const 1
  i32.and
  if (result f64)
   f64.const 0.00833333333332249
   local.get $0
   local.get $0
   f64.mul
   local.tee $4
   f64.const -1.984126982985795e-04
   local.get $4
   f64.const 2.7557313707070068e-06
   f64.mul
   f64.add
   f64.mul
   f64.add
   local.get $4
   local.get $4
   local.get $4
   f64.mul
   f64.mul
   f64.const -2.5050760253406863e-08
   local.get $4
   f64.const 1.58969099521155e-10
   f64.mul
   f64.add
   f64.mul
   f64.add
   local.set $8
   local.get $0
   local.get $4
   f64.const 0.5
   local.get $2
   f64.mul
   local.get $4
   local.get $0
   f64.mul
   local.tee $0
   local.get $8
   f64.mul
   f64.sub
   f64.mul
   local.get $2
   f64.sub
   local.get $0
   f64.const -0.16666666666666632
   f64.mul
   f64.sub
   f64.sub
  else
   f64.const 1
   f64.const 0.5
   local.get $0
   local.get $0
   f64.mul
   local.tee $3
   f64.mul
   local.tee $4
   f64.sub
   local.tee $8
   f64.const 1
   local.get $8
   f64.sub
   local.get $4
   f64.sub
   local.get $3
   local.get $3
   f64.const 0.0416666666666666
   local.get $3
   f64.const -0.001388888888887411
   local.get $3
   f64.const 2.480158728947673e-05
   f64.mul
   f64.add
   f64.mul
   f64.add
   f64.mul
   local.get $3
   local.get $3
   f64.mul
   local.tee $4
   local.get $4
   f64.mul
   f64.const -2.7557314351390663e-07
   local.get $3
   f64.const 2.087572321298175e-09
   local.get $3
   f64.const -1.1359647557788195e-11
   f64.mul
   f64.add
   f64.mul
   f64.add
   f64.mul
   f64.add
   f64.mul
   local.get $0
   local.get $2
   f64.mul
   f64.sub
   f64.add
   f64.add
  end
  local.set $0
  local.get $6
  i32.const 1
  i32.add
  i32.const 2
  i32.and
  if
   local.get $0
   f64.neg
   local.set $0
  end
  local.get $0
 )
 (func $~lib/math/NativeMath.sin (; 40 ;) (param $0 f64) (result f64)
  (local $1 i64)
  (local $2 f64)
  (local $3 f64)
  (local $4 f64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f64)
  local.get $0
  i64.reinterpret_f64
  local.tee $1
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.tee $5
  i32.const 31
  i32.shr_u
  local.set $6
  local.get $5
  i32.const 2147483647
  i32.and
  local.tee $5
  i32.const 1072243195
  i32.le_u
  if
   local.get $5
   i32.const 1045430272
   i32.lt_u
   if
    local.get $0
    return
   end
   f64.const 0.00833333333332249
   local.get $0
   local.get $0
   f64.mul
   local.tee $2
   f64.const -1.984126982985795e-04
   local.get $2
   f64.const 2.7557313707070068e-06
   f64.mul
   f64.add
   f64.mul
   f64.add
   local.get $2
   local.get $2
   local.get $2
   f64.mul
   f64.mul
   f64.const -2.5050760253406863e-08
   local.get $2
   f64.const 1.58969099521155e-10
   f64.mul
   f64.add
   f64.mul
   f64.add
   local.set $3
   local.get $0
   local.get $2
   local.get $0
   f64.mul
   f64.const -0.16666666666666632
   local.get $2
   local.get $3
   f64.mul
   f64.add
   f64.mul
   f64.add
   return
  end
  local.get $5
  i32.const 2146435072
  i32.ge_u
  if
   local.get $0
   local.get $0
   f64.sub
   return
  end
  block $~lib/math/rempio2|inlined.1 (result i32)
   local.get $1
   i64.const 32
   i64.shr_u
   i32.wrap_i64
   i32.const 2147483647
   i32.and
   local.tee $7
   i32.const 1073928572
   i32.lt_u
   if
    i32.const 1
    local.set $5
    local.get $6
    if (result f64)
     local.get $0
     f64.const 1.5707963267341256
     f64.add
     local.set $0
     i32.const -1
     local.set $5
     local.get $7
     i32.const 1073291771
     i32.ne
     if (result f64)
      local.get $0
      local.get $0
      f64.const 6.077100506506192e-11
      f64.add
      local.tee $0
      f64.sub
      f64.const 6.077100506506192e-11
      f64.add
     else
      local.get $0
      f64.const 6.077100506303966e-11
      f64.add
      local.tee $4
      f64.const 2.0222662487959506e-21
      f64.add
      local.set $0
      local.get $4
      local.get $0
      f64.sub
      f64.const 2.0222662487959506e-21
      f64.add
     end
    else
     local.get $0
     f64.const 1.5707963267341256
     f64.sub
     local.set $0
     local.get $7
     i32.const 1073291771
     i32.ne
     if (result f64)
      local.get $0
      local.get $0
      f64.const 6.077100506506192e-11
      f64.sub
      local.tee $0
      f64.sub
      f64.const 6.077100506506192e-11
      f64.sub
     else
      local.get $0
      f64.const 6.077100506303966e-11
      f64.sub
      local.tee $4
      f64.const 2.0222662487959506e-21
      f64.sub
      local.set $0
      local.get $4
      local.get $0
      f64.sub
      f64.const 2.0222662487959506e-21
      f64.sub
     end
    end
    local.get $0
    global.set $~lib/math/rempio2_y0
    global.set $~lib/math/rempio2_y1
    local.get $5
    br $~lib/math/rempio2|inlined.1
   end
   local.get $7
   i32.const 1094263291
   i32.lt_u
   if
    local.get $7
    i32.const 20
    i32.shr_u
    local.tee $6
    local.get $0
    local.get $0
    f64.const 0.6366197723675814
    f64.mul
    f64.nearest
    local.tee $4
    f64.const 1.5707963267341256
    f64.mul
    f64.sub
    local.tee $0
    local.get $4
    f64.const 6.077100506506192e-11
    f64.mul
    local.tee $2
    f64.sub
    local.tee $3
    i64.reinterpret_f64
    i64.const 32
    i64.shr_u
    i32.wrap_i64
    i32.const 20
    i32.shr_u
    i32.const 2047
    i32.and
    i32.sub
    i32.const 16
    i32.gt_u
    if
     local.get $4
     f64.const 2.0222662487959506e-21
     f64.mul
     local.get $0
     local.get $0
     local.get $4
     f64.const 6.077100506303966e-11
     f64.mul
     local.tee $2
     f64.sub
     local.tee $0
     f64.sub
     local.get $2
     f64.sub
     f64.sub
     local.set $2
     local.get $6
     local.get $0
     local.get $2
     f64.sub
     local.tee $3
     i64.reinterpret_f64
     i64.const 32
     i64.shr_u
     i32.wrap_i64
     i32.const 20
     i32.shr_u
     i32.const 2047
     i32.and
     i32.sub
     i32.const 49
     i32.gt_u
     if
      local.get $4
      f64.const 8.4784276603689e-32
      f64.mul
      local.get $0
      local.get $0
      local.get $4
      f64.const 2.0222662487111665e-21
      f64.mul
      local.tee $2
      f64.sub
      local.tee $0
      f64.sub
      local.get $2
      f64.sub
      f64.sub
      local.set $2
      local.get $0
      local.get $2
      f64.sub
      local.set $3
     end
    end
    local.get $3
    global.set $~lib/math/rempio2_y0
    local.get $0
    local.get $3
    f64.sub
    local.get $2
    f64.sub
    global.set $~lib/math/rempio2_y1
    local.get $4
    i32.trunc_f64_s
    br $~lib/math/rempio2|inlined.1
   end
   i32.const 0
   local.get $1
   call $~lib/math/pio2_large_quot
   local.tee $5
   i32.sub
   local.get $5
   local.get $6
   select
  end
  local.set $6
  global.get $~lib/math/rempio2_y0
  local.set $0
  global.get $~lib/math/rempio2_y1
  local.set $4
  local.get $6
  i32.const 1
  i32.and
  if (result f64)
   f64.const 1
   f64.const 0.5
   local.get $0
   local.get $0
   f64.mul
   local.tee $2
   f64.mul
   local.tee $3
   f64.sub
   local.tee $8
   f64.const 1
   local.get $8
   f64.sub
   local.get $3
   f64.sub
   local.get $2
   local.get $2
   f64.const 0.0416666666666666
   local.get $2
   f64.const -0.001388888888887411
   local.get $2
   f64.const 2.480158728947673e-05
   f64.mul
   f64.add
   f64.mul
   f64.add
   f64.mul
   local.get $2
   local.get $2
   f64.mul
   local.tee $3
   local.get $3
   f64.mul
   f64.const -2.7557314351390663e-07
   local.get $2
   f64.const 2.087572321298175e-09
   local.get $2
   f64.const -1.1359647557788195e-11
   f64.mul
   f64.add
   f64.mul
   f64.add
   f64.mul
   f64.add
   f64.mul
   local.get $0
   local.get $4
   f64.mul
   f64.sub
   f64.add
   f64.add
  else
   f64.const 0.00833333333332249
   local.get $0
   local.get $0
   f64.mul
   local.tee $3
   f64.const -1.984126982985795e-04
   local.get $3
   f64.const 2.7557313707070068e-06
   f64.mul
   f64.add
   f64.mul
   f64.add
   local.get $3
   local.get $3
   local.get $3
   f64.mul
   f64.mul
   f64.const -2.5050760253406863e-08
   local.get $3
   f64.const 1.58969099521155e-10
   f64.mul
   f64.add
   f64.mul
   f64.add
   local.set $8
   local.get $0
   local.get $3
   f64.const 0.5
   local.get $4
   f64.mul
   local.get $3
   local.get $0
   f64.mul
   local.tee $0
   local.get $8
   f64.mul
   f64.sub
   f64.mul
   local.get $4
   f64.sub
   local.get $0
   f64.const -0.16666666666666632
   f64.mul
   f64.sub
   f64.sub
  end
  local.set $0
  local.get $6
  i32.const 2
  i32.and
  if
   local.get $0
   f64.neg
   local.set $0
  end
  local.get $0
 )
 (func $assembly/fft/fftSimple (; 41 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 f64)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 f64)
  (local $20 i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 3
  i32.shr_u
  local.tee $3
  call $~lib/staticarray/StaticArray<f64>#constructor
  local.set $5
  local.get $3
  call $~lib/staticarray/StaticArray<f64>#constructor
  local.set $6
  local.get $3
  i32.const 1
  i32.eq
  if
   local.get $5
   local.get $0
   call $~lib/staticarray/StaticArray<f64>#__get
   call $~lib/staticarray/StaticArray<f64>#__set
   local.get $6
   local.get $1
   call $~lib/staticarray/StaticArray<f64>#__get
   call $~lib/staticarray/StaticArray<f64>#__set
   local.get $5
   local.get $6
   call $assembly/fft/PolarArray#constructor
   local.get $5
   i32.const 12252
   i32.gt_u
   if
    local.get $5
    i32.const 16
    i32.sub
    call $~lib/rt/pure/decrement
   end
   local.get $6
   i32.const 12252
   i32.gt_u
   if
    local.get $6
    i32.const 16
    i32.sub
    call $~lib/rt/pure/decrement
   end
   return
  end
  local.get $3
  i32.const 2
  i32.div_s
  local.set $10
  local.get $3
  i32.const 2
  i32.div_s
  call $~lib/staticarray/StaticArray<f64>#constructor
  local.set $11
  local.get $3
  i32.const 2
  i32.div_s
  call $~lib/staticarray/StaticArray<f64>#constructor
  local.set $12
  local.get $3
  i32.const 2
  i32.div_s
  call $~lib/staticarray/StaticArray<f64>#constructor
  local.set $13
  local.get $3
  i32.const 2
  i32.div_s
  call $~lib/staticarray/StaticArray<f64>#constructor
  local.set $14
  loop $for-loop|0
   local.get $7
   local.get $10
   i32.lt_s
   if
    local.get $11
    local.get $7
    i32.const 3
    i32.shl
    local.tee $8
    i32.add
    local.get $0
    local.get $7
    i32.const 1
    i32.shl
    local.tee $2
    i32.const 3
    i32.shl
    local.tee $15
    i32.add
    f64.load
    f64.store
    local.get $8
    local.get $12
    i32.add
    local.get $1
    local.get $15
    i32.add
    f64.load
    f64.store
    local.get $8
    local.get $13
    i32.add
    local.get $0
    local.get $2
    i32.const 1
    i32.add
    i32.const 3
    i32.shl
    local.tee $2
    i32.add
    f64.load
    f64.store
    local.get $8
    local.get $14
    i32.add
    local.get $1
    local.get $2
    i32.add
    f64.load
    f64.store
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $for-loop|0
   end
  end
  local.get $11
  local.get $12
  call $assembly/fft/fftSimple
  local.set $1
  local.get $13
  local.get $14
  call $assembly/fft/fftSimple
  local.set $7
  local.get $1
  i32.load
  local.set $15
  local.get $1
  i32.load offset=4
  local.set $18
  local.get $7
  i32.load
  local.set $8
  local.get $7
  i32.load offset=4
  local.set $10
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 3
  i32.shr_u
  i32.const 2
  i32.div_s
  local.set $16
  loop $for-loop|1
   local.get $4
   local.get $16
   i32.lt_s
   if
    f64.const 1
    f64.const -6.283185307179586
    local.get $4
    f64.convert_i32_s
    f64.mul
    local.get $3
    f64.convert_i32_s
    f64.div
    local.tee $9
    call $~lib/math/NativeMath.cos
    f64.mul
    local.set $19
    f64.const 1
    local.get $9
    call $~lib/math/NativeMath.sin
    f64.mul
    local.set $9
    call $~lib/rt/tlsf/maybeInitialize
    i32.const 16
    i32.const 16
    call $~lib/rt/tlsf/allocateBlock
    i32.const 16
    i32.add
    local.tee $0
    i32.const 12252
    i32.gt_u
    if
     local.get $0
     i32.const 16
     i32.sub
     local.tee $2
     local.get $2
     i32.load offset=4
     i32.const 1
     i32.add
     i32.store offset=4
    end
    local.get $0
    local.get $19
    f64.store
    local.get $0
    local.get $9
    f64.store offset=8
    local.get $8
    local.get $4
    i32.const 3
    i32.shl
    local.tee $2
    i32.add
    local.tee $17
    f64.load
    local.set $9
    local.get $17
    local.get $9
    local.get $0
    f64.load
    f64.mul
    local.get $2
    local.get $10
    i32.add
    local.tee $2
    f64.load
    local.get $0
    f64.load offset=8
    f64.mul
    f64.sub
    f64.store
    local.get $2
    local.get $9
    local.get $0
    f64.load offset=8
    f64.mul
    local.get $2
    f64.load
    local.get $0
    f64.load
    f64.mul
    f64.add
    f64.store
    local.get $0
    i32.const 12252
    i32.gt_u
    if
     local.get $0
     i32.const 16
     i32.sub
     call $~lib/rt/pure/decrement
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|1
   end
  end
  local.get $3
  i32.const 2
  i32.div_s
  local.set $2
  i32.const 0
  local.set $4
  loop $for-loop|2
   local.get $4
   local.get $2
   i32.lt_s
   if
    local.get $5
    local.get $4
    i32.const 3
    i32.shl
    local.tee $0
    i32.add
    local.get $0
    local.get $15
    i32.add
    local.tee $16
    f64.load
    local.get $0
    local.get $8
    i32.add
    local.tee $17
    f64.load
    f64.add
    f64.store
    local.get $0
    local.get $6
    i32.add
    local.get $0
    local.get $18
    i32.add
    local.tee $20
    f64.load
    local.get $0
    local.get $10
    i32.add
    local.tee $0
    f64.load
    f64.add
    f64.store
    local.get $5
    local.get $4
    local.get $3
    i32.const 2
    i32.div_s
    i32.add
    i32.const 3
    i32.shl
    i32.add
    local.get $16
    f64.load
    local.get $17
    f64.load
    f64.sub
    f64.store
    local.get $6
    local.get $4
    local.get $3
    i32.const 2
    i32.div_s
    i32.add
    i32.const 3
    i32.shl
    i32.add
    local.get $20
    f64.load
    local.get $0
    f64.load
    f64.sub
    f64.store
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|2
   end
  end
  local.get $5
  local.get $6
  call $assembly/fft/PolarArray#constructor
  local.get $5
  i32.const 12252
  i32.gt_u
  if
   local.get $5
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
  local.get $6
  i32.const 12252
  i32.gt_u
  if
   local.get $6
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
  local.get $11
  i32.const 12252
  i32.gt_u
  if
   local.get $11
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
  local.get $12
  i32.const 12252
  i32.gt_u
  if
   local.get $12
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
  local.get $13
  i32.const 12252
  i32.gt_u
  if
   local.get $13
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
  local.get $14
  i32.const 12252
  i32.gt_u
  if
   local.get $14
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
  local.get $1
  i32.const 12252
  i32.gt_u
  if
   local.get $1
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
  local.get $7
  i32.const 12252
  i32.gt_u
  if
   local.get $7
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
 )
 (func $assembly/fft/transpose (; 42 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 f64)
  (local $13 f64)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 2
  i32.shr_u
  local.set $8
  loop $for-loop|0
   local.get $3
   local.get $8
   i32.lt_s
   if
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $4
    i32.const 12252
    i32.gt_u
    if
     local.get $4
     i32.const 16
     i32.sub
     local.tee $1
     local.get $1
     i32.load offset=4
     i32.const 1
     i32.add
     i32.store offset=4
    end
    local.get $4
    i32.load
    local.set $9
    local.get $4
    i32.load offset=4
    local.set $10
    i32.const 0
    local.set $5
    loop $for-loop|1
     local.get $5
     local.get $3
     i32.lt_s
     if
      local.get $0
      local.get $5
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.tee $1
      i32.const 12252
      i32.gt_u
      if
       local.get $1
       i32.const 16
       i32.sub
       local.tee $2
       local.get $2
       i32.load offset=4
       i32.const 1
       i32.add
       i32.store offset=4
      end
      local.get $1
      i32.load offset=4
      local.set $11
      local.get $9
      local.get $5
      i32.const 3
      i32.shl
      local.tee $2
      i32.add
      local.tee $6
      f64.load
      local.set $12
      local.get $2
      local.get $10
      i32.add
      local.tee $2
      f64.load
      local.set $13
      local.get $6
      local.get $1
      i32.load
      local.tee $6
      local.get $3
      i32.const 3
      i32.shl
      local.tee $7
      i32.add
      f64.load
      f64.store
      local.get $2
      local.get $7
      local.get $11
      i32.add
      local.tee $2
      f64.load
      f64.store
      local.get $6
      local.get $7
      i32.add
      local.get $12
      f64.store
      local.get $2
      local.get $13
      f64.store
      local.get $1
      i32.const 12252
      i32.gt_u
      if
       local.get $1
       i32.const 16
       i32.sub
       call $~lib/rt/pure/decrement
      end
      local.get $5
      i32.const 1
      i32.add
      local.set $5
      br $for-loop|1
     end
    end
    local.get $4
    i32.const 12252
    i32.gt_u
    if
     local.get $4
     i32.const 16
     i32.sub
     call $~lib/rt/pure/decrement
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
 )
 (func $assembly/fft/fft2D (; 43 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 2
  i32.shr_u
  local.tee $6
  call $~lib/staticarray/StaticArray<assembly/fft/PolarArray>#constructor
  local.set $4
  loop $for-loop|0
   local.get $1
   local.get $6
   i32.lt_s
   if
    local.get $0
    local.get $1
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $3
    i32.const 12252
    i32.gt_u
    if
     local.get $3
     i32.const 16
     i32.sub
     local.tee $2
     local.get $2
     i32.load offset=4
     i32.const 1
     i32.add
     i32.store offset=4
    end
    local.get $3
    i32.load
    local.set $7
    local.get $0
    local.get $1
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $2
    i32.const 12252
    i32.gt_u
    if
     local.get $2
     i32.const 16
     i32.sub
     local.tee $5
     local.get $5
     i32.load offset=4
     i32.const 1
     i32.add
     i32.store offset=4
    end
    local.get $4
    local.get $1
    local.get $7
    local.get $2
    i32.load offset=4
    call $assembly/fft/fftSimple
    local.tee $5
    call $~lib/staticarray/StaticArray<~lib/array/Array<assembly/bfs/Edge>>#__unchecked_set
    local.get $3
    i32.const 12252
    i32.gt_u
    if
     local.get $3
     i32.const 16
     i32.sub
     call $~lib/rt/pure/decrement
    end
    local.get $2
    i32.const 12252
    i32.gt_u
    if
     local.get $2
     i32.const 16
     i32.sub
     call $~lib/rt/pure/decrement
    end
    local.get $5
    i32.const 12252
    i32.gt_u
    if
     local.get $5
     i32.const 16
     i32.sub
     call $~lib/rt/pure/decrement
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $4
  call $assembly/fft/transpose
  i32.const 0
  local.set $1
  loop $for-loop|1
   local.get $1
   local.get $6
   i32.lt_s
   if
    local.get $4
    local.get $1
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $2
    i32.const 12252
    i32.gt_u
    if
     local.get $2
     i32.const 16
     i32.sub
     local.tee $0
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.add
     i32.store offset=4
    end
    local.get $2
    i32.load
    local.set $5
    local.get $4
    local.get $1
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $0
    i32.const 12252
    i32.gt_u
    if
     local.get $0
     i32.const 16
     i32.sub
     local.tee $3
     local.get $3
     i32.load offset=4
     i32.const 1
     i32.add
     i32.store offset=4
    end
    local.get $4
    local.get $1
    local.get $5
    local.get $0
    i32.load offset=4
    call $assembly/fft/fftSimple
    local.tee $3
    call $~lib/staticarray/StaticArray<~lib/array/Array<assembly/bfs/Edge>>#__unchecked_set
    local.get $2
    i32.const 12252
    i32.gt_u
    if
     local.get $2
     i32.const 16
     i32.sub
     call $~lib/rt/pure/decrement
    end
    local.get $0
    i32.const 12252
    i32.gt_u
    if
     local.get $0
     i32.const 16
     i32.sub
     call $~lib/rt/pure/decrement
    end
    local.get $3
    i32.const 12252
    i32.gt_u
    if
     local.get $3
     i32.const 16
     i32.sub
     call $~lib/rt/pure/decrement
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|1
   end
  end
  local.get $4
  call $assembly/fft/transpose
  local.get $4
 )
 (func $assembly/fft/fft (; 44 ;) (result f64)
  (local $0 i32)
  (local $1 i32)
  (local $2 f64)
  (local $3 i32)
  i32.const 256
  call $~lib/staticarray/StaticArray<assembly/fft/PolarArray>#constructor
  local.set $1
  loop $for-loop|0
   local.get $0
   i32.const 256
   i32.lt_s
   if
    local.get $1
    local.get $0
    call $assembly/fft/randomComplexArray
    local.tee $3
    call $~lib/staticarray/StaticArray<~lib/array/Array<assembly/bfs/Edge>>#__unchecked_set
    local.get $3
    i32.const 12252
    i32.gt_u
    if
     local.get $3
     i32.const 16
     i32.sub
     call $~lib/rt/pure/decrement
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  call $assembly/common/performanceNow
  local.set $2
  local.get $1
  call $assembly/fft/fft2D
  local.tee $0
  i32.const 12252
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
  call $assembly/common/performanceNow
  local.get $2
  f64.sub
  local.get $1
  i32.const 12252
  i32.gt_u
  if
   local.get $1
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
 )
 (func $assembly/lud/randomMatrix (; 45 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f64)
  local.get $0
  i32.const 16
  i32.sub
  local.tee $1
  i32.load offset=12
  i32.const 3
  i32.shr_u
  f64.convert_i32_s
  f64.sqrt
  local.set $4
  local.get $1
  i32.load offset=12
  i32.const 3
  i32.shr_u
  call $~lib/staticarray/StaticArray<f64>#constructor
  local.set $6
  local.get $1
  i32.load offset=12
  i32.const 3
  i32.shr_u
  call $~lib/staticarray/StaticArray<f64>#constructor
  local.set $7
  loop $for-loop|0
   local.get $3
   f64.convert_i32_s
   local.get $4
   f64.lt
   if
    i32.const 0
    local.set $1
    loop $for-loop|1
     local.get $1
     f64.convert_i32_s
     local.get $4
     f64.lt
     if
      local.get $3
      local.get $1
      i32.gt_s
      if
       local.get $6
       local.get $3
       f64.convert_i32_s
       local.get $4
       f64.mul
       local.get $1
       f64.convert_i32_s
       f64.add
       i32.trunc_f64_s
       i32.const 3
       i32.shl
       i32.add
       global.get $assembly/common/seed
       local.tee $2
       i32.const 2127912214
       i32.add
       local.get $2
       i32.const 12
       i32.shl
       i32.add
       global.set $assembly/common/seed
       global.get $assembly/common/seed
       local.tee $2
       i32.const -949894596
       i32.xor
       local.get $2
       i32.const 19
       i32.shr_u
       i32.xor
       global.set $assembly/common/seed
       global.get $assembly/common/seed
       local.tee $2
       i32.const 374761393
       i32.add
       local.get $2
       i32.const 5
       i32.shl
       i32.add
       global.set $assembly/common/seed
       global.get $assembly/common/seed
       local.tee $2
       i32.const -744332180
       i32.add
       local.get $2
       i32.const 9
       i32.shl
       i32.xor
       global.set $assembly/common/seed
       global.get $assembly/common/seed
       local.tee $2
       i32.const -42973499
       i32.add
       local.get $2
       i32.const 3
       i32.shl
       i32.add
       global.set $assembly/common/seed
       global.get $assembly/common/seed
       local.tee $2
       i32.const -1252372727
       i32.xor
       local.get $2
       i32.const 16
       i32.shr_u
       i32.xor
       global.set $assembly/common/seed
       global.get $assembly/common/seed
       f64.convert_i32_s
       f64.abs
       f64.store
      else
       local.get $1
       local.get $3
       i32.eq
       if
        local.get $6
        local.get $3
        f64.convert_i32_s
        local.get $4
        f64.mul
        local.get $1
        f64.convert_i32_s
        f64.add
        i32.trunc_f64_s
        i32.const 3
        i32.shl
        i32.add
        f64.const 1
        f64.store
       else
        local.get $6
        local.get $3
        f64.convert_i32_s
        local.get $4
        f64.mul
        local.get $1
        f64.convert_i32_s
        f64.add
        i32.trunc_f64_s
        i32.const 3
        i32.shl
        i32.add
        f64.const 0
        f64.store
       end
      end
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|1
     end
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  i32.const 0
  local.set $3
  loop $for-loop|2
   local.get $3
   f64.convert_i32_s
   local.get $4
   f64.lt
   if
    i32.const 0
    local.set $1
    loop $for-loop|3
     local.get $1
     f64.convert_i32_s
     local.get $4
     f64.lt
     if
      local.get $1
      local.get $3
      i32.gt_s
      if
       local.get $7
       local.get $3
       f64.convert_i32_s
       local.get $4
       f64.mul
       local.get $1
       f64.convert_i32_s
       f64.add
       i32.trunc_f64_s
       i32.const 3
       i32.shl
       i32.add
       f64.const 0
       f64.store
      else
       local.get $7
       local.get $3
       f64.convert_i32_s
       local.get $4
       f64.mul
       local.get $1
       f64.convert_i32_s
       f64.add
       i32.trunc_f64_s
       i32.const 3
       i32.shl
       i32.add
       global.get $assembly/common/seed
       local.tee $2
       i32.const 2127912214
       i32.add
       local.get $2
       i32.const 12
       i32.shl
       i32.add
       global.set $assembly/common/seed
       global.get $assembly/common/seed
       local.tee $2
       i32.const -949894596
       i32.xor
       local.get $2
       i32.const 19
       i32.shr_u
       i32.xor
       global.set $assembly/common/seed
       global.get $assembly/common/seed
       local.tee $2
       i32.const 374761393
       i32.add
       local.get $2
       i32.const 5
       i32.shl
       i32.add
       global.set $assembly/common/seed
       global.get $assembly/common/seed
       local.tee $2
       i32.const -744332180
       i32.add
       local.get $2
       i32.const 9
       i32.shl
       i32.xor
       global.set $assembly/common/seed
       global.get $assembly/common/seed
       local.tee $2
       i32.const -42973499
       i32.add
       local.get $2
       i32.const 3
       i32.shl
       i32.add
       global.set $assembly/common/seed
       global.get $assembly/common/seed
       local.tee $2
       i32.const -1252372727
       i32.xor
       local.get $2
       i32.const 16
       i32.shr_u
       i32.xor
       global.set $assembly/common/seed
       global.get $assembly/common/seed
       f64.convert_i32_s
       f64.abs
       f64.store
      end
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|3
     end
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|2
   end
  end
  i32.const 0
  local.set $3
  loop $for-loop|4
   local.get $3
   f64.convert_i32_s
   local.get $4
   f64.lt
   if
    i32.const 0
    local.set $1
    loop $for-loop|5
     local.get $1
     f64.convert_i32_s
     local.get $4
     f64.lt
     if
      f64.const 0
      local.set $8
      i32.const 0
      local.set $5
      loop $for-loop|6
       local.get $5
       f64.convert_i32_s
       local.get $4
       f64.lt
       if
        local.get $8
        local.get $6
        local.get $3
        f64.convert_i32_s
        local.get $4
        f64.mul
        local.get $5
        f64.convert_i32_s
        local.tee $8
        f64.add
        i32.trunc_f64_s
        i32.const 3
        i32.shl
        i32.add
        f64.load
        local.get $7
        local.get $1
        f64.convert_i32_s
        local.get $4
        f64.mul
        local.get $8
        f64.add
        i32.trunc_f64_s
        i32.const 3
        i32.shl
        i32.add
        f64.load
        f64.mul
        f64.add
        local.set $8
        local.get $5
        i32.const 1
        i32.add
        local.set $5
        br $for-loop|6
       end
      end
      local.get $0
      local.get $3
      f64.convert_i32_s
      local.get $4
      f64.mul
      local.get $1
      f64.convert_i32_s
      f64.add
      i32.trunc_f64_s
      i32.const 3
      i32.shl
      i32.add
      local.get $8
      f64.store
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|5
     end
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|4
   end
  end
  local.get $6
  i32.const 12252
  i32.gt_u
  if
   local.get $6
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
  local.get $7
  i32.const 12252
  i32.gt_u
  if
   local.get $7
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
 )
 (func $assembly/lud/performLud (; 46 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 i32)
  loop $for-loop|0
   local.get $2
   i32.const 512
   i32.lt_s
   if
    local.get $2
    local.set $1
    loop $for-loop|1
     local.get $1
     i32.const 512
     i32.lt_s
     if
      local.get $0
      local.get $1
      local.get $2
      i32.const 9
      i32.shl
      i32.add
      i32.const 3
      i32.shl
      i32.add
      f64.load
      local.set $3
      i32.const 0
      local.set $4
      loop $for-loop|2
       local.get $4
       local.get $2
       i32.lt_s
       if
        local.get $3
        local.get $0
        local.get $4
        local.get $2
        i32.const 9
        i32.shl
        i32.add
        i32.const 3
        i32.shl
        i32.add
        f64.load
        local.get $0
        local.get $1
        local.get $4
        i32.const 9
        i32.shl
        i32.add
        i32.const 3
        i32.shl
        i32.add
        f64.load
        f64.mul
        f64.sub
        local.set $3
        local.get $4
        i32.const 1
        i32.add
        local.set $4
        br $for-loop|2
       end
      end
      local.get $0
      local.get $1
      local.get $2
      i32.const 9
      i32.shl
      i32.add
      i32.const 3
      i32.shl
      i32.add
      local.get $3
      f64.store
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|1
     end
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $1
    loop $for-loop|3
     local.get $1
     i32.const 512
     i32.lt_s
     if
      local.get $0
      local.get $2
      local.get $1
      i32.const 9
      i32.shl
      i32.add
      i32.const 3
      i32.shl
      i32.add
      f64.load
      local.set $3
      i32.const 0
      local.set $4
      loop $for-loop|4
       local.get $4
       local.get $2
       i32.lt_s
       if
        local.get $3
        local.get $0
        local.get $4
        local.get $1
        i32.const 9
        i32.shl
        i32.add
        i32.const 3
        i32.shl
        i32.add
        f64.load
        local.get $0
        local.get $2
        local.get $4
        i32.const 9
        i32.shl
        i32.add
        i32.const 3
        i32.shl
        i32.add
        f64.load
        f64.mul
        f64.sub
        local.set $3
        local.get $4
        i32.const 1
        i32.add
        local.set $4
        br $for-loop|4
       end
      end
      local.get $0
      local.get $2
      local.get $1
      i32.const 9
      i32.shl
      i32.add
      i32.const 3
      i32.shl
      i32.add
      local.get $3
      local.get $0
      local.get $2
      local.get $2
      i32.const 9
      i32.shl
      i32.add
      i32.const 3
      i32.shl
      i32.add
      f64.load
      f64.div
      f64.store
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|3
     end
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
 )
 (func $assembly/lud/lud (; 47 ;) (result f64)
  (local $0 i32)
  (local $1 f64)
  i32.const 262144
  call $~lib/staticarray/StaticArray<f64>#constructor
  local.tee $0
  call $assembly/lud/randomMatrix
  call $assembly/common/performanceNow
  local.set $1
  local.get $0
  call $assembly/lud/performLud
  call $assembly/common/performanceNow
  local.get $1
  f64.sub
  local.get $0
  i32.const 12252
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
 )
 (func $~lib/math/NativeMath.mod (; 48 ;) (param $0 f64) (param $1 f64) (result f64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  local.get $0
  i64.reinterpret_f64
  local.tee $2
  i64.const 52
  i64.shr_u
  i64.const 2047
  i64.and
  local.set $4
  local.get $1
  i64.reinterpret_f64
  local.tee $3
  i64.const 52
  i64.shr_u
  i64.const 2047
  i64.and
  local.set $5
  local.get $3
  i64.const 1
  i64.shl
  local.tee $6
  i64.eqz
  if (result i32)
   i32.const 1
  else
   local.get $4
   i64.const 2047
   i64.eq
  end
  if (result i32)
   i32.const 1
  else
   local.get $1
   local.get $1
   f64.ne
  end
  if
   local.get $0
   local.get $1
   f64.mul
   local.tee $0
   local.get $0
   f64.div
   return
  end
  local.get $2
  i64.const 63
  i64.shr_u
  local.set $7
  block $folding-inner0
   local.get $2
   i64.const 1
   i64.shl
   local.tee $8
   local.get $6
   i64.le_u
   if
    local.get $6
    local.get $8
    i64.eq
    br_if $folding-inner0
    local.get $0
    return
   end
   local.get $4
   i64.eqz
   if (result i64)
    local.get $2
    i64.const 0
    local.get $4
    local.get $2
    i64.const 12
    i64.shl
    i64.clz
    i64.sub
    local.tee $4
    i64.sub
    i64.const 1
    i64.add
    i64.shl
   else
    local.get $2
    i64.const 4503599627370495
    i64.and
    i64.const 4503599627370496
    i64.or
   end
   local.set $2
   local.get $5
   i64.eqz
   if (result i64)
    local.get $3
    i64.const 0
    local.get $5
    local.get $3
    i64.const 12
    i64.shl
    i64.clz
    i64.sub
    local.tee $5
    i64.sub
    i64.const 1
    i64.add
    i64.shl
   else
    local.get $3
    i64.const 4503599627370495
    i64.and
    i64.const 4503599627370496
    i64.or
   end
   local.set $3
   loop $while-continue|0
    local.get $4
    local.get $5
    i64.gt_s
    if
     local.get $2
     local.get $3
     i64.ge_u
     if (result i64)
      local.get $2
      local.get $3
      i64.eq
      br_if $folding-inner0
      local.get $2
      local.get $3
      i64.sub
     else
      local.get $2
     end
     i64.const 1
     i64.shl
     local.set $2
     local.get $4
     i64.const 1
     i64.sub
     local.set $4
     br $while-continue|0
    end
   end
   local.get $2
   local.get $3
   i64.ge_u
   if
    local.get $2
    local.get $3
    i64.eq
    br_if $folding-inner0
    local.get $2
    local.get $3
    i64.sub
    local.set $2
   end
   local.get $2
   local.get $2
   i64.const 11
   i64.shl
   i64.clz
   local.tee $3
   i64.shl
   local.set $2
   local.get $4
   local.get $3
   i64.sub
   local.tee $4
   i64.const 0
   i64.gt_s
   if (result i64)
    local.get $2
    i64.const 4503599627370496
    i64.sub
    local.get $4
    i64.const 52
    i64.shl
    i64.or
   else
    local.get $2
    i64.const 0
    local.get $4
    i64.sub
    i64.const 1
    i64.add
    i64.shr_u
   end
   local.get $7
   i64.const 63
   i64.shl
   i64.or
   f64.reinterpret_i64
   return
  end
  f64.const 0
  local.get $0
  f64.mul
 )
 (func $~lib/staticarray/StaticArray<i32>#__get (; 49 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 7504
   i32.const 1200
   i32.const 95
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $assembly/pagerank/randomPages (; 50 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  call $~lib/rt/tlsf/maybeInitialize
  i32.const 4000
  i32.const 18
  call $~lib/rt/tlsf/allocateBlock
  i32.const 16
  i32.add
  local.tee $4
  i32.const 4000
  call $~lib/memory/memory.fill
  local.get $4
  i32.const 12252
  i32.gt_u
  if
   local.get $4
   i32.const 16
   i32.sub
   local.tee $3
   local.get $3
   i32.load offset=4
   i32.const 1
   i32.add
   i32.store offset=4
  end
  loop $for-loop|0
   local.get $2
   i32.const 1000
   i32.lt_s
   if
    local.get $4
    local.get $2
    i32.const 1000
    call $~lib/staticarray/StaticArray<i32>#constructor
    local.tee $3
    call $~lib/staticarray/StaticArray<~lib/array/Array<assembly/bfs/Edge>>#__unchecked_set
    local.get $3
    i32.const 12252
    i32.gt_u
    if
     local.get $3
     i32.const 16
     i32.sub
     call $~lib/rt/pure/decrement
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  i32.const 0
  local.set $2
  loop $for-loop|1
   local.get $2
   i32.const 1000
   i32.lt_s
   if
    local.get $0
    local.get $2
    i32.const 2
    i32.shl
    local.tee $3
    i32.add
    i32.const 0
    i32.store
    local.get $3
    local.get $4
    i32.add
    i32.load
    local.tee $3
    i32.const 12252
    i32.gt_u
    if
     local.get $3
     i32.const 16
     i32.sub
     local.tee $1
     local.get $1
     i32.load offset=4
     i32.const 1
     i32.add
     i32.store offset=4
    end
    i32.const 0
    local.set $5
    loop $for-loop|2
     local.get $5
     i32.const 1000
     i32.lt_s
     if
      local.get $2
      local.get $5
      i32.ne
      if (result i32)
       global.get $assembly/common/seed
       local.tee $1
       i32.const 2127912214
       i32.add
       local.get $1
       i32.const 12
       i32.shl
       i32.add
       global.set $assembly/common/seed
       global.get $assembly/common/seed
       local.tee $1
       i32.const -949894596
       i32.xor
       local.get $1
       i32.const 19
       i32.shr_u
       i32.xor
       global.set $assembly/common/seed
       global.get $assembly/common/seed
       local.tee $1
       i32.const 374761393
       i32.add
       local.get $1
       i32.const 5
       i32.shl
       i32.add
       global.set $assembly/common/seed
       global.get $assembly/common/seed
       local.tee $1
       i32.const -744332180
       i32.add
       local.get $1
       i32.const 9
       i32.shl
       i32.xor
       global.set $assembly/common/seed
       global.get $assembly/common/seed
       local.tee $1
       i32.const -42973499
       i32.add
       local.get $1
       i32.const 3
       i32.shl
       i32.add
       global.set $assembly/common/seed
       global.get $assembly/common/seed
       local.tee $1
       i32.const -1252372727
       i32.xor
       local.get $1
       i32.const 16
       i32.shr_u
       i32.xor
       global.set $assembly/common/seed
       global.get $assembly/common/seed
       f64.convert_i32_s
       f64.abs
       f64.const 1e5
       call $~lib/math/NativeMath.mod
       f64.const 0
       f64.eq
      else
       i32.const 0
      end
      if
       local.get $3
       local.get $5
       i32.const 2
       i32.shl
       i32.add
       i32.const 1
       i32.store
       local.get $0
       local.get $2
       i32.const 2
       i32.shl
       i32.add
       local.tee $1
       local.get $1
       i32.load
       i32.const 1
       i32.add
       i32.store
      end
      local.get $5
      i32.const 1
      i32.add
      local.set $5
      br $for-loop|2
     end
    end
    local.get $0
    local.get $2
    call $~lib/staticarray/StaticArray<i32>#__get
    i32.eqz
    if
     loop $do-continue|3
      global.get $assembly/common/seed
      local.tee $1
      i32.const 2127912214
      i32.add
      local.get $1
      i32.const 12
      i32.shl
      i32.add
      global.set $assembly/common/seed
      global.get $assembly/common/seed
      local.tee $1
      i32.const -949894596
      i32.xor
      local.get $1
      i32.const 19
      i32.shr_u
      i32.xor
      global.set $assembly/common/seed
      global.get $assembly/common/seed
      local.tee $1
      i32.const 374761393
      i32.add
      local.get $1
      i32.const 5
      i32.shl
      i32.add
      global.set $assembly/common/seed
      global.get $assembly/common/seed
      local.tee $1
      i32.const -744332180
      i32.add
      local.get $1
      i32.const 9
      i32.shl
      i32.xor
      global.set $assembly/common/seed
      global.get $assembly/common/seed
      local.tee $1
      i32.const -42973499
      i32.add
      local.get $1
      i32.const 3
      i32.shl
      i32.add
      global.set $assembly/common/seed
      global.get $assembly/common/seed
      local.tee $1
      i32.const -1252372727
      i32.xor
      local.get $1
      i32.const 16
      i32.shr_u
      i32.xor
      global.set $assembly/common/seed
      local.get $2
      global.get $assembly/common/seed
      f64.convert_i32_s
      f64.abs
      f64.const 1e3
      call $~lib/math/NativeMath.mod
      i32.trunc_f64_s
      local.tee $1
      i32.eq
      br_if $do-continue|3
     end
     local.get $3
     local.get $1
     i32.const 2
     i32.shl
     i32.add
     i32.const 1
     i32.store
     local.get $0
     local.get $2
     i32.const 2
     i32.shl
     i32.add
     i32.const 1
     i32.store
    end
    local.get $3
    i32.const 12252
    i32.gt_u
    if
     local.get $3
     i32.const 16
     i32.sub
     call $~lib/rt/pure/decrement
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|1
   end
  end
  local.get $4
 )
 (func $assembly/pagerank/mapPageRank (; 51 ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 f64)
  loop $for-loop|0
   local.get $9
   i32.const 1000
   i32.lt_s
   if
    local.get $1
    local.get $9
    i32.const 3
    i32.shl
    i32.add
    f64.load
    local.get $3
    local.get $9
    i32.const 2
    i32.shl
    local.tee $4
    i32.add
    i32.load
    f64.convert_i32_s
    f64.div
    local.set $10
    local.get $2
    local.get $4
    i32.add
    i32.load
    local.tee $4
    i32.const 12252
    i32.gt_u
    if
     local.get $4
     i32.const 16
     i32.sub
     local.tee $5
     local.get $5
     i32.load offset=4
     i32.const 1
     i32.add
     i32.store offset=4
    end
    local.get $0
    local.get $9
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $5
    i32.const 12252
    i32.gt_u
    if
     local.get $5
     i32.const 16
     i32.sub
     local.tee $6
     local.get $6
     i32.load offset=4
     i32.const 1
     i32.add
     i32.store offset=4
    end
    local.get $4
    local.set $7
    local.get $5
    local.set $6
    i32.const 0
    local.set $8
    loop $for-loop|1
     local.get $8
     i32.const 1000
     i32.lt_s
     if
      local.get $6
      local.get $8
      i32.const 2
      i32.shl
      i32.add
      i32.load
      if
       local.get $7
       local.get $8
       i32.const 3
       i32.shl
       i32.add
       local.get $6
       local.get $8
       i32.const 2
       i32.shl
       i32.add
       i32.load
       f64.convert_i32_s
       local.get $10
       f64.mul
       f64.store
      else
       local.get $7
       local.get $8
       i32.const 3
       i32.shl
       i32.add
       f64.const 0
       f64.store
      end
      local.get $8
      i32.const 1
      i32.add
      local.set $8
      br $for-loop|1
     end
    end
    local.get $7
    i32.const 12252
    i32.gt_u
    if
     local.get $7
     i32.const 16
     i32.sub
     call $~lib/rt/pure/decrement
    end
    local.get $6
    i32.const 12252
    i32.gt_u
    if
     local.get $6
     i32.const 16
     i32.sub
     call $~lib/rt/pure/decrement
    end
    local.get $9
    i32.const 1
    i32.add
    local.set $9
    br $for-loop|0
   end
  end
 )
 (func $assembly/pagerank/reducePageRank (; 52 ;) (param $0 i32) (param $1 i32) (result f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 f64)
  (local $8 f64)
  (local $9 i32)
  (local $10 i32)
  (local $11 f64)
  (local $12 f64)
  i32.const 1000
  call $~lib/staticarray/StaticArray<f64>#constructor
  local.set $5
  loop $for-loop|0
   local.get $4
   i32.const 1000
   i32.lt_s
   if
    local.get $1
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $2
    i32.const 12252
    i32.gt_u
    if
     local.get $2
     i32.const 16
     i32.sub
     local.tee $3
     local.get $3
     i32.load offset=4
     i32.const 1
     i32.add
     i32.store offset=4
    end
    local.get $2
    local.set $3
    i32.const 0
    local.set $6
    loop $for-loop|1
     local.get $6
     i32.const 1000
     i32.lt_s
     if
      local.get $5
      local.get $6
      i32.const 3
      i32.shl
      local.tee $9
      i32.add
      local.tee $10
      local.get $10
      f64.load
      local.get $3
      local.get $9
      i32.add
      f64.load
      f64.add
      f64.store
      local.get $6
      i32.const 1
      i32.add
      local.set $6
      br $for-loop|1
     end
    end
    local.get $3
    i32.const 12252
    i32.gt_u
    if
     local.get $3
     i32.const 16
     i32.sub
     call $~lib/rt/pure/decrement
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  i32.const 0
  local.set $4
  loop $for-loop|2
   local.get $4
   i32.const 1000
   i32.lt_s
   if
    local.get $0
    local.get $4
    i32.const 3
    i32.shl
    local.tee $1
    i32.add
    f64.load
    local.tee $11
    local.set $12
    f64.const 1.4999997615814208e-04
    f64.const 0.8500000238418579
    local.get $1
    local.get $5
    i32.add
    f64.load
    f64.mul
    f64.add
    local.tee $8
    local.get $11
    f64.sub
    f64.abs
    local.get $7
    f64.gt
    if
     local.get $8
     local.get $12
     f64.sub
     f64.abs
     local.set $7
    end
    local.get $0
    local.get $4
    i32.const 3
    i32.shl
    i32.add
    local.get $8
    f64.store
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|2
   end
  end
  local.get $5
  i32.const 12252
  i32.gt_u
  if
   local.get $5
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
  local.get $7
 )
 (func $assembly/pagerank/pagerank (; 53 ;) (result f64)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f64)
  (local $9 f64)
  call $~lib/rt/tlsf/maybeInitialize
  i32.const 4000
  i32.const 17
  call $~lib/rt/tlsf/allocateBlock
  i32.const 16
  i32.add
  local.tee $5
  i32.const 4000
  call $~lib/memory/memory.fill
  local.get $5
  i32.const 12252
  i32.gt_u
  if
   local.get $5
   i32.const 16
   i32.sub
   local.tee $2
   local.get $2
   i32.load offset=4
   i32.const 1
   i32.add
   i32.store offset=4
  end
  i32.const 1000
  call $~lib/staticarray/StaticArray<f64>#constructor
  local.set $6
  i32.const 1000
  call $~lib/staticarray/StaticArray<i32>#constructor
  local.set $7
  f64.const inf
  local.set $8
  loop $for-loop|0
   local.get $3
   i32.const 1000
   i32.lt_s
   if
    local.get $5
    local.get $3
    i32.const 1000
    call $~lib/staticarray/StaticArray<f64>#constructor
    local.tee $2
    call $~lib/staticarray/StaticArray<~lib/array/Array<assembly/bfs/Edge>>#__unchecked_set
    local.get $2
    i32.const 12252
    i32.gt_u
    if
     local.get $2
     i32.const 16
     i32.sub
     call $~lib/rt/pure/decrement
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  local.get $7
  call $assembly/pagerank/randomPages
  local.set $2
  loop $for-loop|1
   local.get $4
   i32.const 1000
   i32.lt_s
   if
    local.get $6
    local.get $4
    i32.const 3
    i32.shl
    i32.add
    f64.const 0.001
    f64.store
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|1
   end
  end
  i32.const 0
  local.set $4
  loop $for-loop|2
   local.get $0
   i32.const 1000
   i32.lt_s
   if
    local.get $0
    local.tee $1
    local.get $2
    i32.const 16
    i32.sub
    i32.load offset=12
    i32.const 2
    i32.shr_u
    i32.ge_u
    if
     i32.const 7504
     i32.const 1200
     i32.const 95
     i32.const 41
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    local.get $1
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $0
    i32.const 12252
    i32.gt_u
    if
     local.get $0
     i32.const 16
     i32.sub
     local.tee $3
     local.get $3
     i32.load offset=4
     i32.const 1
     i32.add
     i32.store offset=4
    end
    local.get $0
    i32.eqz
    if
     local.get $0
     i32.const 12252
     i32.gt_u
     if
      local.get $0
      i32.const 16
      i32.sub
      call $~lib/rt/pure/decrement
     end
     i32.const 7776
     i32.const 1200
     i32.const 99
     i32.const 40
     call $~lib/builtins/abort
     unreachable
    end
    i32.const 0
    local.set $3
    loop $for-loop|3
     local.get $3
     i32.const 1000
     i32.lt_s
     if
      local.get $4
      local.get $0
      local.get $3
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.add
      local.set $4
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      br $for-loop|3
     end
    end
    local.get $0
    i32.const 12252
    i32.gt_u
    if
     local.get $0
     i32.const 16
     i32.sub
     call $~lib/rt/pure/decrement
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|2
   end
  end
  call $assembly/common/performanceNow
  local.set $9
  i32.const 1
  local.set $4
  loop $for-loop|4
   local.get $8
   f64.const 1e-08
   f64.ge
   i32.const 0
   local.get $4
   i32.const 10
   i32.le_s
   select
   if
    local.get $2
    local.get $6
    local.get $5
    local.get $7
    call $assembly/pagerank/mapPageRank
    local.get $6
    local.get $5
    call $assembly/pagerank/reducePageRank
    local.set $8
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|4
   end
  end
  call $assembly/common/performanceNow
  local.get $9
  f64.sub
  local.get $5
  i32.const 12252
  i32.gt_u
  if
   local.get $5
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
  local.get $6
  i32.const 12252
  i32.gt_u
  if
   local.get $6
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
  local.get $7
  i32.const 12252
  i32.gt_u
  if
   local.get $7
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
  local.get $2
  i32.const 12252
  i32.gt_u
  if
   local.get $2
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
 )
 (func $assembly/spmv/Csr#constructor (; 54 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  call $~lib/rt/tlsf/maybeInitialize
  i32.const 60
  i32.const 19
  call $~lib/rt/tlsf/allocateBlock
  i32.const 16
  i32.add
  local.tee $3
  i32.const 12252
  i32.gt_u
  if
   local.get $3
   i32.const 16
   i32.sub
   local.tee $4
   local.get $4
   i32.load offset=4
   i32.const 1
   i32.add
   i32.store offset=4
  end
  local.get $3
  i32.const 25000
  i32.store
  local.get $3
  i32.const 25000
  i32.store offset=4
  local.get $3
  f64.const 0.1
  f64.store offset=8
  local.get $3
  f64.const 0
  f64.store offset=16
  local.get $3
  f64.const 25
  f64.store offset=24
  local.get $3
  i32.const 625000
  i32.store offset=32
  local.get $3
  f64.const 0.125
  f64.store offset=40
  local.get $0
  i32.const 12252
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   local.tee $4
   local.get $4
   i32.load offset=4
   i32.const 1
   i32.add
   i32.store offset=4
  end
  local.get $3
  local.get $0
  i32.store offset=48
  local.get $1
  i32.const 12252
  i32.gt_u
  if
   local.get $1
   i32.const 16
   i32.sub
   local.tee $0
   local.get $0
   i32.load offset=4
   i32.const 1
   i32.add
   i32.store offset=4
  end
  local.get $3
  local.get $1
  i32.store offset=52
  local.get $2
  i32.const 12252
  i32.gt_u
  if
   local.get $2
   i32.const 16
   i32.sub
   local.tee $0
   local.get $0
   i32.load offset=4
   i32.const 1
   i32.add
   i32.store offset=4
  end
  local.get $3
  local.get $2
  i32.store offset=56
  local.get $3
 )
 (func $~lib/staticarray/StaticArray<u32>#constructor (; 55 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 268435452
  i32.gt_u
  if
   i32.const 1152
   i32.const 1200
   i32.const 83
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/rt/tlsf/maybeInitialize
  local.get $0
  i32.const 2
  i32.shl
  local.tee $1
  i32.const 20
  call $~lib/rt/tlsf/allocateBlock
  i32.const 16
  i32.add
  local.tee $0
  local.get $1
  call $~lib/memory/memory.fill
  local.get $0
  i32.const 12252
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   local.tee $1
   local.get $1
   i32.load offset=4
   i32.const 1
   i32.add
   i32.store offset=4
  end
  local.get $0
 )
 (func $~lib/staticarray/StaticArray<f32>#constructor (; 56 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 268435452
  i32.gt_u
  if
   i32.const 1152
   i32.const 1200
   i32.const 83
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/rt/tlsf/maybeInitialize
  local.get $0
  i32.const 2
  i32.shl
  local.tee $1
  i32.const 21
  call $~lib/rt/tlsf/allocateBlock
  i32.const 16
  i32.add
  local.tee $0
  local.get $1
  call $~lib/memory/memory.fill
  local.get $0
  i32.const 12252
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   local.tee $1
   local.get $1
   i32.load offset=4
   i32.const 1
   i32.add
   i32.store offset=4
  end
  local.get $0
 )
 (func $~lib/arraybuffer/ArrayBufferView#constructor (; 57 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.const 1073741808
  i32.gt_u
  if
   i32.const 1152
   i32.const 7888
   i32.const 23
   i32.const 57
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/rt/tlsf/maybeInitialize
  local.get $1
  local.tee $3
  i32.const 0
  call $~lib/rt/tlsf/allocateBlock
  i32.const 16
  i32.add
  local.tee $2
  local.get $1
  call $~lib/memory/memory.fill
  local.get $0
  i32.eqz
  if
   call $~lib/rt/tlsf/maybeInitialize
   i32.const 12
   i32.const 2
   call $~lib/rt/tlsf/allocateBlock
   i32.const 16
   i32.add
   local.tee $0
   i32.const 12252
   i32.gt_u
   if
    local.get $0
    i32.const 16
    i32.sub
    local.tee $1
    local.get $1
    i32.load offset=4
    i32.const 1
    i32.add
    i32.store offset=4
   end
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $2
  local.tee $1
  local.get $0
  i32.load
  local.tee $4
  i32.ne
  if
   local.get $1
   i32.const 12252
   i32.gt_u
   if
    local.get $1
    i32.const 16
    i32.sub
    local.tee $5
    local.get $5
    i32.load offset=4
    i32.const 1
    i32.add
    i32.store offset=4
   end
   local.get $4
   i32.const 12252
   i32.gt_u
   if
    local.get $4
    i32.const 16
    i32.sub
    call $~lib/rt/pure/decrement
   end
  end
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $3
  i32.store offset=8
  local.get $0
 )
 (func $~lib/math/NativeMath.pow (; 58 ;) (param $0 f64) (result f64)
  (local $1 f64)
  (local $2 f64)
  (local $3 i64)
  (local $4 f64)
  (local $5 i64)
  (local $6 f64)
  (local $7 i32)
  (local $8 f64)
  (local $9 f64)
  (local $10 f64)
  (local $11 f64)
  (local $12 f64)
  (local $13 i32)
  local.get $0
  f64.abs
  f64.const 2
  f64.le
  if
   local.get $0
   f64.const 2
   f64.eq
   if
    f64.const 4
    return
   end
   local.get $0
   f64.const 0.5
   f64.eq
   if
    f64.const 1.4142135623730951
    return
   end
   local.get $0
   f64.const -1
   f64.eq
   if
    f64.const 0.5
    return
   end
   local.get $0
   f64.const 1
   f64.eq
   if
    f64.const 2
    return
   end
   local.get $0
   f64.const 0
   f64.eq
   if
    f64.const 1
    return
   end
  end
  block $~lib/util/math/pow_lut|inlined.0
   block $~lib/util/math/exp_inline|inlined.0 (result f64)
    local.get $0
    i64.reinterpret_f64
    local.tee $3
    i64.const 52
    i64.shr_u
    local.tee $5
    i64.const 2047
    i64.and
    i64.const 958
    i64.sub
    i64.const 128
    i64.ge_u
    if
     local.get $3
     i64.const 1
     i64.shl
     i64.const 1
     i64.sub
     i64.const -9007199254740993
     i64.ge_u
     if
      local.get $3
      i64.const 1
      i64.shl
      i64.eqz
      if
       f64.const 1
       local.set $1
       br $~lib/util/math/pow_lut|inlined.0
      end
      local.get $3
      i64.const 1
      i64.shl
      i64.const -9007199254740992
      i64.gt_u
      if
       f64.const 2
       local.get $0
       f64.add
       local.set $1
       br $~lib/util/math/pow_lut|inlined.0
      end
      local.get $3
      i64.const 63
      i64.shr_u
      i64.eqz
      i32.eqz
      br_if $~lib/util/math/pow_lut|inlined.0
      local.get $0
      local.get $0
      f64.mul
      local.set $1
      br $~lib/util/math/pow_lut|inlined.0
     end
     local.get $5
     i64.const 2047
     i64.and
     i64.const 958
     i64.sub
     i64.const 128
     i64.ge_u
     if
      local.get $5
      i64.const 2047
      i64.and
      i64.const 958
      i64.lt_u
      if
       f64.const 1
       local.set $1
       br $~lib/util/math/pow_lut|inlined.0
      end
      f64.const inf
      f64.const 0
      local.get $5
      i64.const 2048
      i64.lt_u
      i32.const 1
      i32.eq
      select
      local.set $1
      br $~lib/util/math/pow_lut|inlined.0
     end
    end
    f64.const 0.6931471805598903
    i32.const 10368
    f64.load
    f64.add
    local.tee $8
    f64.const 1
    i32.const 10352
    f64.load
    local.tee $1
    f64.mul
    f64.const 1
    f64.sub
    local.tee $2
    f64.const 0
    local.get $1
    f64.mul
    local.tee $9
    f64.add
    local.tee $1
    f64.add
    local.tee $6
    local.get $2
    f64.const -0.5
    local.get $2
    f64.mul
    local.tee $10
    f64.mul
    local.tee $11
    f64.add
    local.set $2
    local.get $1
    f64.const -0.5
    local.get $1
    f64.mul
    local.tee $12
    f64.mul
    local.set $4
    local.get $2
    local.get $2
    f64.const 5.497923018708371e-14
    i32.const 10376
    f64.load
    f64.add
    local.get $8
    local.get $6
    f64.sub
    local.get $1
    f64.add
    f64.add
    local.get $9
    local.get $12
    local.get $10
    f64.add
    f64.mul
    f64.add
    local.get $6
    local.get $2
    f64.sub
    local.get $11
    f64.add
    f64.add
    local.get $1
    local.get $4
    f64.mul
    f64.const -0.6666666666666679
    local.get $1
    f64.const 0.5000000000000007
    f64.mul
    f64.add
    local.get $4
    f64.const 0.7999999995323976
    local.get $1
    f64.const -0.6666666663487739
    f64.mul
    f64.add
    local.get $4
    f64.const -1.142909628459501
    local.get $1
    f64.const 1.0000415263675542
    f64.mul
    f64.add
    f64.mul
    f64.add
    f64.mul
    f64.add
    f64.mul
    f64.add
    local.tee $2
    f64.add
    local.tee $1
    f64.sub
    local.get $2
    f64.add
    global.set $~lib/util/math/log_tail
    local.get $0
    local.get $3
    i64.const -134217728
    i64.and
    f64.reinterpret_i64
    local.tee $4
    f64.sub
    local.get $1
    i64.reinterpret_f64
    i64.const -134217728
    i64.and
    f64.reinterpret_i64
    local.tee $2
    f64.mul
    local.get $0
    local.get $1
    local.get $2
    f64.sub
    global.get $~lib/util/math/log_tail
    f64.add
    f64.mul
    f64.add
    local.set $6
    local.get $4
    local.get $2
    f64.mul
    local.tee $1
    i64.reinterpret_f64
    local.tee $3
    i64.const 52
    i64.shr_u
    i32.wrap_i64
    i32.const 2047
    i32.and
    local.tee $7
    i32.const 969
    i32.sub
    i32.const 63
    i32.ge_u
    if
     f64.const 1
     local.get $7
     i32.const 969
     i32.sub
     i32.const -2147483648
     i32.ge_u
     br_if $~lib/util/math/exp_inline|inlined.0
     drop
     f64.const 0
     f64.const inf
     local.get $3
     i64.const 63
     i64.shr_u
     i64.const 0
     i64.ne
     select
     local.get $7
     i32.const 1033
     i32.ge_u
     br_if $~lib/util/math/exp_inline|inlined.0
     drop
     i32.const 0
     local.set $7
    end
    f64.const 184.6649652337873
    local.get $1
    f64.mul
    f64.const 6755399441055744
    f64.add
    local.tee $0
    i64.reinterpret_f64
    local.tee $5
    i64.const 127
    i64.and
    i64.const 1
    i64.shl
    i32.wrap_i64
    i32.const 3
    i32.shl
    i32.const 1264
    i32.add
    local.tee $13
    i64.load offset=8
    local.get $5
    i64.const 0
    i64.add
    i64.const 45
    i64.shl
    i64.add
    local.set $3
    local.get $1
    local.get $0
    f64.const 6755399441055744
    f64.sub
    local.tee $0
    f64.const -0.005415212348111709
    f64.mul
    f64.add
    local.get $0
    f64.const -1.2864023111638346e-14
    f64.mul
    f64.add
    local.get $6
    f64.add
    local.tee $0
    local.get $0
    f64.mul
    local.set $1
    local.get $13
    i64.load
    f64.reinterpret_i64
    local.get $0
    f64.add
    local.get $1
    f64.const 0.49999999999996786
    local.get $0
    f64.const 0.16666666666665886
    f64.mul
    f64.add
    f64.mul
    f64.add
    local.get $1
    local.get $1
    f64.mul
    f64.const 0.0416666808410674
    local.get $0
    f64.const 0.008333335853059549
    f64.mul
    f64.add
    f64.mul
    f64.add
    local.set $1
    local.get $7
    i32.eqz
    if
     block $~lib/util/math/specialcase|inlined.1 (result f64)
      local.get $5
      i64.const 2147483648
      i64.and
      i64.eqz
      if
       f64.const 5486124068793688683255936e279
       local.get $3
       i64.const 4544132024016830464
       i64.sub
       f64.reinterpret_i64
       local.tee $0
       local.get $0
       local.get $1
       f64.mul
       f64.add
       f64.mul
       br $~lib/util/math/specialcase|inlined.1
      end
      local.get $3
      i64.const 4602678819172646912
      i64.add
      local.tee $3
      f64.reinterpret_i64
      local.tee $2
      local.get $2
      local.get $1
      f64.mul
      f64.add
      local.tee $0
      f64.abs
      f64.const 1
      f64.lt
      if
       f64.const 1
       local.get $0
       f64.copysign
       local.tee $4
       local.get $0
       f64.add
       local.tee $6
       local.get $4
       local.get $6
       f64.sub
       local.get $0
       f64.add
       local.get $2
       local.get $0
       f64.sub
       local.get $2
       local.get $1
       f64.mul
       f64.add
       f64.add
       f64.add
       local.get $4
       f64.sub
       local.tee $0
       f64.const 0
       f64.eq
       if
        local.get $3
        i64.const -9223372036854775808
        i64.and
        f64.reinterpret_i64
        local.set $0
       end
      end
      local.get $0
      f64.const 2.2250738585072014e-308
      f64.mul
     end
     br $~lib/util/math/exp_inline|inlined.0
    end
    local.get $3
    f64.reinterpret_i64
    local.tee $0
    local.get $0
    local.get $1
    f64.mul
    f64.add
   end
   local.set $1
  end
  local.get $1
 )
 (func $assembly/spmv/Ziggurat#UNI (; 59 ;) (param $0 i32) (result f64)
  (local $1 i32)
  local.get $0
  i32.load
  local.set $1
  local.get $0
  local.get $0
  i32.load
  local.tee $0
  local.get $0
  i32.const 13
  i32.shl
  i32.xor
  local.tee $0
  local.get $0
  i32.const 17
  i32.shr_u
  i32.xor
  local.tee $0
  local.get $0
  i32.const 5
  i32.shl
  i32.xor
  local.tee $0
  i32.store
  f64.const 0.5
  f64.const 1
  local.get $0
  local.get $1
  i32.add
  f64.convert_i32_s
  f64.const 31
  call $~lib/math/NativeMath.pow
  f64.neg
  f64.div
  f64.add
  f64.mul
 )
 (func $assembly/spmv/Ziggurat#nfix (; 60 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result f64)
  (local $3 f64)
  (local $4 f64)
  loop $while-continue|0 (result f64)
   local.get $1
   f64.convert_i32_s
   local.get $0
   i32.load offset=4
   local.get $2
   i32.const 3
   i32.shl
   i32.add
   f64.load
   f64.mul
   local.set $3
   local.get $2
   i32.eqz
   if
    local.get $0
    call $assembly/spmv/Ziggurat#UNI
    call $~lib/math/NativeMath.log
    f64.neg
    f64.const 0.29047645161474317
    f64.mul
    local.set $3
    local.get $0
    call $assembly/spmv/Ziggurat#UNI
    call $~lib/math/NativeMath.log
    f64.neg
    local.set $4
    loop $while-continue|1
     local.get $4
     local.get $4
     f64.add
     local.get $3
     local.get $3
     f64.mul
     f64.lt
     if
      local.get $0
      call $assembly/spmv/Ziggurat#UNI
      call $~lib/math/NativeMath.log
      f64.neg
      f64.const 0.29047645161474317
      f64.mul
      local.set $3
      local.get $0
      call $assembly/spmv/Ziggurat#UNI
      call $~lib/math/NativeMath.log
      f64.neg
      local.set $4
      br $while-continue|1
     end
    end
    f64.const 3.442619855899
    local.get $3
    f64.add
    f64.const -3.442619855899
    local.get $3
    f64.sub
    local.get $1
    i32.const 0
    i32.gt_s
    select
    return
   end
   local.get $0
   i32.load offset=8
   local.get $2
   i32.const 3
   i32.shl
   i32.add
   f64.load
   local.get $0
   call $assembly/spmv/Ziggurat#UNI
   local.get $0
   i32.load offset=8
   local.get $2
   i32.const 1
   i32.sub
   i32.const 3
   i32.shl
   i32.add
   f64.load
   f64.mul
   f64.add
   local.get $0
   i32.load offset=8
   local.get $2
   i32.const 3
   i32.shl
   i32.add
   f64.load
   f64.sub
   f64.const -0.5
   local.get $3
   f64.mul
   local.get $3
   f64.mul
   call $~lib/math/NativeMath.exp
   f64.lt
   if
    local.get $3
    return
   end
   local.get $0
   i32.load
   local.set $1
   local.get $0
   local.get $0
   i32.load
   local.tee $2
   local.get $2
   i32.const 13
   i32.shl
   i32.xor
   local.tee $2
   local.get $2
   i32.const 17
   i32.shr_u
   i32.xor
   local.tee $2
   local.get $2
   i32.const 5
   i32.shl
   i32.xor
   local.tee $2
   i32.store
   local.get $0
   i32.load offset=12
   local.get $1
   local.get $2
   i32.add
   local.tee $1
   i32.const 127
   i32.and
   local.tee $2
   i32.const 3
   i32.shl
   i32.add
   f64.load
   local.set $3
   local.get $1
   f64.convert_i32_s
   f64.abs
   local.get $3
   f64.lt
   i32.eqz
   br_if $while-continue|0
   local.get $1
   f64.convert_i32_s
   local.get $0
   i32.load offset=4
   local.get $2
   i32.const 3
   i32.shl
   i32.add
   f64.load
   f64.mul
  end
 )
 (func $~lib/staticarray/StaticArray<u32>#slice (; 61 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 2
  i32.shr_u
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $3
   i32.add
   local.tee $1
   i32.const 0
   local.get $1
   i32.const 0
   i32.gt_s
   select
  else
   local.get $1
   local.get $3
   local.get $1
   local.get $3
   i32.lt_s
   select
  end
  local.set $1
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $2
   local.get $3
   i32.add
   local.tee $2
   i32.const 0
   local.get $2
   i32.const 0
   i32.gt_s
   select
  else
   local.get $2
   local.get $3
   local.get $2
   local.get $3
   i32.lt_s
   select
  end
  call $~lib/rt/tlsf/maybeInitialize
  i32.const 16
  i32.const 23
  call $~lib/rt/tlsf/allocateBlock
  i32.const 16
  i32.add
  local.tee $2
  local.set $7
  local.get $1
  i32.sub
  local.tee $3
  i32.const 0
  local.get $3
  i32.const 0
  i32.gt_s
  select
  local.tee $4
  local.set $8
  call $~lib/rt/tlsf/maybeInitialize
  local.get $4
  i32.const 2
  i32.shl
  local.tee $9
  i32.const 0
  call $~lib/rt/tlsf/allocateBlock
  i32.const 16
  i32.add
  local.tee $5
  local.set $6
  local.get $5
  i32.const 12252
  i32.gt_u
  if
   local.get $6
   i32.const 16
   i32.sub
   local.tee $3
   local.get $3
   i32.load offset=4
   i32.const 1
   i32.add
   i32.store offset=4
  end
  local.get $7
  local.get $6
  i32.store
  local.get $2
  local.get $5
  i32.store offset=4
  local.get $2
  local.get $9
  i32.store offset=8
  local.get $2
  local.get $8
  i32.store offset=12
  local.get $2
  i32.const 12252
  i32.gt_u
  if
   local.get $2
   i32.const 16
   i32.sub
   local.tee $3
   local.get $3
   i32.load offset=4
   i32.const 1
   i32.add
   i32.store offset=4
  end
  local.get $2
  i32.load offset=4
  local.get $0
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $4
  i32.const 2
  i32.shl
  call $~lib/memory/memory.copy
  local.get $2
 )
 (func $~lib/util/sort/weakHeapSort<u32> (; 62 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  call $~lib/rt/tlsf/maybeInitialize
  local.get $1
  i32.const 31
  i32.add
  i32.const 5
  i32.shr_u
  i32.const 2
  i32.shl
  local.tee $3
  i32.const 0
  call $~lib/rt/tlsf/allocateBlock
  i32.const 16
  i32.add
  local.tee $5
  local.get $3
  call $~lib/memory/memory.fill
  local.get $1
  i32.const 1
  i32.sub
  local.set $4
  loop $for-loop|0
   local.get $4
   i32.const 0
   i32.gt_s
   if
    local.get $4
    local.set $3
    loop $while-continue|1
     local.get $3
     i32.const 1
     i32.and
     local.get $5
     local.get $3
     i32.const 6
     i32.shr_u
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.get $3
     i32.const 1
     i32.shr_s
     i32.const 31
     i32.and
     i32.shr_u
     i32.const 1
     i32.and
     i32.eq
     if
      local.get $3
      i32.const 1
      i32.shr_s
      local.set $3
      br $while-continue|1
     end
    end
    local.get $0
    local.get $3
    i32.const 1
    i32.shr_s
    local.tee $7
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $3
    local.get $0
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $6
    i32.const 2
    global.set $~argumentsLength
    local.get $3
    local.get $6
    local.get $2
    call_indirect (type $i32_i32_=>_i32)
    i32.const 0
    i32.lt_s
    if
     local.get $5
     local.get $4
     i32.const 5
     i32.shr_u
     i32.const 2
     i32.shl
     i32.add
     local.tee $8
     local.get $8
     i32.load
     i32.const 1
     local.get $4
     i32.const 31
     i32.and
     i32.shl
     i32.xor
     i32.store
     local.get $0
     local.get $4
     i32.const 2
     i32.shl
     i32.add
     local.get $3
     i32.store
     local.get $0
     local.get $7
     i32.const 2
     i32.shl
     i32.add
     local.get $6
     i32.store
    end
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    br $for-loop|0
   end
  end
  local.get $1
  i32.const 1
  i32.sub
  local.set $4
  loop $for-loop|2
   local.get $4
   i32.const 2
   i32.ge_s
   if
    local.get $0
    i32.load
    local.set $1
    local.get $0
    local.get $0
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    local.tee $3
    i32.load
    i32.store
    local.get $3
    local.get $1
    i32.store
    i32.const 1
    local.set $1
    loop $while-continue|3
     local.get $5
     local.get $1
     i32.const 5
     i32.shr_u
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.get $1
     i32.const 31
     i32.and
     i32.shr_u
     i32.const 1
     i32.and
     local.get $1
     i32.const 1
     i32.shl
     i32.add
     local.tee $3
     local.get $4
     i32.lt_s
     if
      local.get $3
      local.set $1
      br $while-continue|3
     end
    end
    loop $while-continue|4
     local.get $1
     i32.const 0
     i32.gt_s
     if
      local.get $0
      i32.load
      local.set $3
      local.get $0
      local.get $1
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.set $6
      i32.const 2
      global.set $~argumentsLength
      local.get $3
      local.get $6
      local.get $2
      call_indirect (type $i32_i32_=>_i32)
      i32.const 0
      i32.lt_s
      if
       local.get $5
       local.get $1
       i32.const 5
       i32.shr_u
       i32.const 2
       i32.shl
       i32.add
       local.tee $7
       local.get $7
       i32.load
       i32.const 1
       local.get $1
       i32.const 31
       i32.and
       i32.shl
       i32.xor
       i32.store
       local.get $0
       local.get $1
       i32.const 2
       i32.shl
       i32.add
       local.get $3
       i32.store
       local.get $0
       local.get $6
       i32.store
      end
      local.get $1
      i32.const 1
      i32.shr_s
      local.set $1
      br $while-continue|4
     end
    end
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    br $for-loop|2
   end
  end
  call $~lib/rt/tlsf/maybeInitialize
  local.get $5
  i32.const 16
  i32.sub
  local.tee $1
  local.get $1
  i32.load
  i32.const 1
  i32.or
  i32.store
  local.get $1
  call $~lib/rt/tlsf/insertBlock
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $0
  local.get $0
  i32.load
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store
 )
 (func $~lib/array/Array<u32>#sort (; 63 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  block $folding-inner0
   local.get $0
   i32.load offset=12
   local.tee $2
   i32.const 1
   i32.le_s
   br_if $folding-inner0
   local.get $0
   i32.load offset=4
   local.set $5
   local.get $2
   i32.const 2
   i32.eq
   if
    local.get $5
    i32.load offset=4
    local.set $2
    local.get $5
    i32.load
    local.set $3
    i32.const 2
    global.set $~argumentsLength
    local.get $2
    local.get $3
    local.get $1
    call_indirect (type $i32_i32_=>_i32)
    i32.const 0
    i32.lt_s
    if
     local.get $5
     local.get $3
     i32.store offset=4
     local.get $5
     local.get $2
     i32.store
    end
    br $folding-inner0
   end
   local.get $2
   i32.const 256
   i32.lt_s
   if
    local.get $2
    local.set $3
    local.get $1
    local.set $4
    loop $for-loop|0
     local.get $6
     local.get $3
     i32.lt_s
     if
      local.get $5
      local.get $6
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.set $7
      local.get $6
      i32.const 1
      i32.sub
      local.set $1
      loop $while-continue|1
       local.get $1
       i32.const 0
       i32.ge_s
       if
        block $while-break|1
         local.get $5
         local.get $1
         i32.const 2
         i32.shl
         i32.add
         i32.load
         local.set $8
         i32.const 2
         global.set $~argumentsLength
         local.get $7
         local.get $8
         local.get $4
         call_indirect (type $i32_i32_=>_i32)
         i32.const 0
         i32.ge_s
         br_if $while-break|1
         local.get $1
         local.tee $2
         i32.const 1
         i32.sub
         local.set $1
         local.get $5
         local.get $2
         i32.const 1
         i32.add
         i32.const 2
         i32.shl
         i32.add
         local.get $8
         i32.store
         br $while-continue|1
        end
       end
      end
      local.get $5
      local.get $1
      i32.const 1
      i32.add
      i32.const 2
      i32.shl
      i32.add
      local.get $7
      i32.store
      local.get $6
      i32.const 1
      i32.add
      local.set $6
      br $for-loop|0
     end
    end
   else
    local.get $5
    local.get $2
    local.get $1
    call $~lib/util/sort/weakHeapSort<u32>
   end
   local.get $0
   i32.const 12252
   i32.gt_u
   if
    local.get $0
    i32.const 16
    i32.sub
    local.tee $1
    local.get $1
    i32.load offset=4
    i32.const 1
    i32.add
    i32.store offset=4
   end
   local.get $0
   return
  end
  local.get $0
  i32.const 12252
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   local.tee $1
   local.get $1
   i32.load offset=4
   i32.const 1
   i32.add
   i32.store offset=4
  end
  local.get $0
 )
 (func $~lib/util/sort/COMPARATOR<u32>~anonymous|0 (; 64 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.gt_u
  local.get $0
  local.get $1
  i32.lt_u
  i32.sub
 )
 (func $assembly/spmv/generateRandomCSR (; 65 ;) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 f64)
  (local $13 f64)
  (local $14 i32)
  (local $15 i32)
  i32.const 25001
  call $~lib/staticarray/StaticArray<u32>#constructor
  local.tee $6
  i32.const 625000
  call $~lib/staticarray/StaticArray<u32>#constructor
  local.tee $5
  i32.const 0
  call $~lib/staticarray/StaticArray<f32>#constructor
  local.tee $4
  call $assembly/spmv/Csr#constructor
  local.tee $15
  i32.load offset=48
  i32.const 0
  i32.store
  local.get $15
  i32.load offset=4
  f64.convert_i32_s
  f64.const 2
  local.get $15
  f64.load offset=24
  f64.mul
  i32.trunc_f64_s
  f64.convert_i32_s
  f64.min
  i32.trunc_f64_s
  local.set $2
  local.get $15
  i32.load offset=4
  local.set $1
  call $~lib/rt/tlsf/maybeInitialize
  i32.const 12
  i32.const 22
  call $~lib/rt/tlsf/allocateBlock
  i32.const 16
  i32.add
  local.tee $0
  i32.const 12252
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   local.tee $11
   local.get $11
   i32.load offset=4
   i32.const 1
   i32.add
   i32.store offset=4
  end
  local.get $0
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $11
  loop $for-loop|0
   local.get $10
   local.get $15
   i32.load
   i32.lt_s
   if
    global.get $assembly/spmv/gaussian
    local.tee $0
    i32.load
    local.set $1
    local.get $0
    local.get $0
    i32.load
    local.tee $14
    local.get $14
    i32.const 13
    i32.shl
    i32.xor
    local.tee $14
    local.get $14
    i32.const 17
    i32.shr_u
    i32.xor
    local.tee $14
    local.get $14
    i32.const 5
    i32.shl
    i32.xor
    local.tee $14
    i32.store
    local.get $0
    i32.load offset=12
    local.get $1
    local.get $14
    i32.add
    local.tee $1
    i32.const 127
    i32.and
    local.tee $14
    i32.const 3
    i32.shl
    i32.add
    f64.load
    local.set $13
    local.get $1
    f64.convert_i32_s
    f64.abs
    local.get $13
    f64.lt
    if (result f64)
     local.get $1
     f64.convert_i32_s
     local.get $0
     i32.load offset=4
     local.get $14
     i32.const 3
     i32.shl
     i32.add
     f64.load
     f64.mul
    else
     local.get $0
     local.get $1
     local.get $14
     call $assembly/spmv/Ziggurat#nfix
    end
    local.get $15
    f64.load offset=40
    f64.mul
    local.get $15
    f64.load offset=24
    f64.add
    local.tee $13
    f64.const 0
    f64.lt
    if (result f64)
     f64.const 0
    else
     local.get $2
     f64.convert_i32_s
     local.tee $12
     local.get $13
     f64.const 0.5
     f64.add
     f64.floor
     local.get $13
     f64.copysign
     f64.abs
     local.get $13
     local.get $12
     f64.gt
     select
    end
    local.set $13
    local.get $10
    i32.const 1
    i32.add
    i32.const 2
    i32.shl
    local.tee $0
    local.get $15
    i32.load offset=48
    i32.add
    local.get $15
    i32.load offset=48
    local.get $10
    i32.const 2
    i32.shl
    i32.add
    i32.load
    f64.convert_i32_u
    local.get $13
    f64.add
    i32.trunc_f64_u
    i32.store
    local.get $0
    local.get $15
    i32.load offset=48
    i32.add
    i32.load
    local.get $15
    i32.load offset=32
    i32.gt_s
    if
     local.get $15
     i32.load offset=52
     local.set $1
     local.get $15
     i32.load offset=48
     local.get $10
     i32.const 1
     i32.add
     i32.const 2
     i32.shl
     i32.add
     i32.load
     call $~lib/staticarray/StaticArray<u32>#constructor
     local.set $0
     local.get $15
     i32.load offset=52
     local.tee $14
     i32.const 12252
     i32.gt_u
     if
      local.get $14
      i32.const 16
      i32.sub
      call $~lib/rt/pure/decrement
     end
     local.get $15
     local.get $0
     i32.store offset=52
     local.get $1
     i32.const 16
     i32.sub
     i32.load offset=12
     i32.const 2
     i32.shr_u
     local.set $14
     i32.const 0
     local.set $0
     loop $for-loop|1
      local.get $0
      local.get $14
      i32.lt_s
      if
       local.get $0
       i32.const 2
       i32.shl
       local.tee $8
       local.get $15
       i32.load offset=52
       i32.add
       local.get $1
       local.get $8
       i32.add
       i32.load
       i32.store
       local.get $0
       i32.const 1
       i32.add
       local.set $0
       br $for-loop|1
      end
     end
    end
    i32.const 0
    local.set $0
    loop $for-loop|2
     local.get $0
     local.get $15
     i32.load offset=4
     i32.lt_s
     if
      local.get $0
      local.get $11
      i32.load offset=4
      i32.add
      i32.const 0
      i32.store8
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $for-loop|2
     end
    end
    local.get $13
    i32.trunc_f64_s
    local.set $7
    i32.const 0
    local.set $1
    loop $for-loop|3
     local.get $1
     local.get $7
     i32.lt_s
     if
      i32.const 0
      local.set $0
      local.get $15
      i32.load offset=4
      i32.const 1
      i32.sub
      local.tee $14
      i32.const 0
      i32.lt_s
      if (result i32)
       i32.const 1
      else
       local.get $14
       i32.const 0
       i32.lt_s
      end
      i32.eqz
      if
       local.get $14
       i32.const 1
       i32.add
       local.set $0
       global.get $assembly/common/seed
       local.tee $14
       i32.const 2127912214
       i32.add
       local.get $14
       i32.const 12
       i32.shl
       i32.add
       global.set $assembly/common/seed
       global.get $assembly/common/seed
       local.tee $14
       i32.const -949894596
       i32.xor
       local.get $14
       i32.const 19
       i32.shr_u
       i32.xor
       global.set $assembly/common/seed
       global.get $assembly/common/seed
       local.tee $14
       i32.const 374761393
       i32.add
       local.get $14
       i32.const 5
       i32.shl
       i32.add
       global.set $assembly/common/seed
       global.get $assembly/common/seed
       local.tee $14
       i32.const -744332180
       i32.add
       local.get $14
       i32.const 9
       i32.shl
       i32.xor
       global.set $assembly/common/seed
       global.get $assembly/common/seed
       local.tee $14
       i32.const -42973499
       i32.add
       local.get $14
       i32.const 3
       i32.shl
       i32.add
       global.set $assembly/common/seed
       global.get $assembly/common/seed
       local.tee $14
       i32.const -1252372727
       i32.xor
       local.get $14
       i32.const 16
       i32.shr_u
       i32.xor
       global.set $assembly/common/seed
       global.get $assembly/common/seed
       f64.convert_i32_s
       f64.abs
       f64.const 32
       call $~lib/math/NativeMath.pow
       f64.const 1
       f64.sub
       f64.mul
       local.tee $13
       f64.floor
       local.tee $12
       f64.const 0
       f64.ne
       local.get $12
       local.get $12
       f64.eq
       i32.and
       if (result f64)
        local.get $13
        f64.floor
       else
        local.get $13
        f64.ceil
       end
       i64.trunc_f64_s
       local.get $0
       i64.extend_i32_s
       i64.rem_s
       i64.const 0
       i64.add
       i32.wrap_i64
       local.set $0
      end
      local.get $0
      local.get $11
      i32.load offset=4
      i32.add
      i32.load8_s
      if
       local.get $1
       i32.const 1
       i32.sub
       local.set $1
      else
       local.get $15
       i32.load offset=52
       local.get $1
       local.get $15
       i32.load offset=48
       local.get $10
       i32.const 2
       i32.shl
       i32.add
       i32.load
       i32.add
       i32.const 2
       i32.shl
       i32.add
       local.get $0
       i32.store
       local.get $0
       local.get $11
       i32.load offset=4
       i32.add
       i32.const 1
       i32.store8
      end
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|3
     end
    end
    local.get $15
    i32.load offset=52
    local.set $8
    local.get $15
    i32.load offset=48
    local.get $10
    call $~lib/staticarray/StaticArray<i32>#__get
    local.set $1
    local.get $15
    i32.load offset=48
    local.get $10
    i32.const 1
    i32.add
    local.tee $10
    call $~lib/staticarray/StaticArray<i32>#__get
    local.set $7
    i32.const 0
    local.set $0
    i32.const 0
    global.set $~argumentsLength
    local.get $8
    local.get $1
    local.get $7
    call $~lib/staticarray/StaticArray<u32>#slice
    local.tee $3
    block $1of1
     block $0of1
      block $outOfRange
       global.get $~argumentsLength
       br_table $0of1 $1of1 $outOfRange
      end
      unreachable
     end
     i32.const 2
     local.set $0
    end
    local.get $0
    call $~lib/array/Array<u32>#sort
    local.set $14
    local.get $1
    local.set $0
    loop $for-loop|00
     local.get $0
     local.get $7
     i32.lt_u
     if
      local.get $8
      local.get $0
      i32.const 2
      i32.shl
      i32.add
      local.get $14
      i32.load offset=4
      local.get $0
      local.get $1
      i32.sub
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.store
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $for-loop|00
     end
    end
    local.get $3
    i32.const 12252
    i32.gt_u
    if
     local.get $3
     i32.const 16
     i32.sub
     call $~lib/rt/pure/decrement
    end
    local.get $14
    i32.const 12252
    i32.gt_u
    if
     local.get $14
     i32.const 16
     i32.sub
     call $~lib/rt/pure/decrement
    end
    br $for-loop|0
   end
  end
  local.get $15
  local.get $15
  i32.load offset=48
  local.get $15
  i32.load
  i32.const 2
  i32.shl
  i32.add
  i32.load
  i32.store offset=32
  local.get $15
  local.get $15
  i32.load offset=32
  f64.convert_i32_s
  f64.const 100
  f64.mul
  local.get $15
  i32.load offset=4
  local.get $15
  i32.load
  i32.mul
  f64.convert_i32_s
  f64.div
  f64.store offset=8
  local.get $15
  local.get $15
  f64.load offset=8
  f64.const 1e4
  f64.mul
  local.tee $13
  f64.const 0.5
  f64.add
  f64.floor
  local.get $13
  f64.copysign
  f64.store offset=16
  local.get $15
  i32.load offset=32
  call $~lib/staticarray/StaticArray<f32>#constructor
  local.set $0
  local.get $15
  i32.load offset=56
  local.tee $1
  i32.const 12252
  i32.gt_u
  if
   local.get $1
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
  local.get $15
  local.get $0
  i32.store offset=56
  loop $for-loop|4
   local.get $9
   local.get $15
   i32.load offset=32
   i32.lt_s
   if
    local.get $15
    i32.load offset=56
    local.get $9
    i32.const 2
    i32.shl
    i32.add
    global.get $assembly/common/seed
    local.tee $1
    i32.const 2127912214
    i32.add
    local.get $1
    i32.const 12
    i32.shl
    i32.add
    global.set $assembly/common/seed
    global.get $assembly/common/seed
    local.tee $1
    i32.const -949894596
    i32.xor
    local.get $1
    i32.const 19
    i32.shr_u
    i32.xor
    global.set $assembly/common/seed
    global.get $assembly/common/seed
    local.tee $1
    i32.const 374761393
    i32.add
    local.get $1
    i32.const 5
    i32.shl
    i32.add
    global.set $assembly/common/seed
    global.get $assembly/common/seed
    local.tee $1
    i32.const -744332180
    i32.add
    local.get $1
    i32.const 9
    i32.shl
    i32.xor
    global.set $assembly/common/seed
    global.get $assembly/common/seed
    local.tee $1
    i32.const -42973499
    i32.add
    local.get $1
    i32.const 3
    i32.shl
    i32.add
    global.set $assembly/common/seed
    global.get $assembly/common/seed
    local.tee $1
    i32.const -1252372727
    i32.xor
    local.get $1
    i32.const 16
    i32.shr_u
    i32.xor
    global.set $assembly/common/seed
    f64.const 1
    f64.const 2
    global.get $assembly/common/seed
    f64.convert_i32_s
    f64.abs
    f64.const 32
    call $~lib/math/NativeMath.pow
    f64.const 1
    f64.sub
    f64.mul
    local.tee $13
    f64.floor
    local.tee $12
    f64.const 0
    f64.ne
    local.get $12
    local.get $12
    f64.eq
    i32.and
    if (result f64)
     local.get $13
     f64.floor
    else
     local.get $13
     f64.ceil
    end
    i64.trunc_f64_s
    f64.convert_i64_s
    f64.const 2147483648
    f64.div
    f64.mul
    f64.sub
    f32.demote_f64
    f32.store
    loop $while-continue|5
     local.get $15
     i32.load offset=56
     local.get $9
     i32.const 2
     i32.shl
     i32.add
     f32.load
     f32.const 0
     f32.eq
     if
      local.get $15
      i32.load offset=56
      local.get $9
      i32.const 2
      i32.shl
      i32.add
      global.get $assembly/common/seed
      local.tee $1
      i32.const 2127912214
      i32.add
      local.get $1
      i32.const 12
      i32.shl
      i32.add
      global.set $assembly/common/seed
      global.get $assembly/common/seed
      local.tee $1
      i32.const -949894596
      i32.xor
      local.get $1
      i32.const 19
      i32.shr_u
      i32.xor
      global.set $assembly/common/seed
      global.get $assembly/common/seed
      local.tee $1
      i32.const 374761393
      i32.add
      local.get $1
      i32.const 5
      i32.shl
      i32.add
      global.set $assembly/common/seed
      global.get $assembly/common/seed
      local.tee $1
      i32.const -744332180
      i32.add
      local.get $1
      i32.const 9
      i32.shl
      i32.xor
      global.set $assembly/common/seed
      global.get $assembly/common/seed
      local.tee $1
      i32.const -42973499
      i32.add
      local.get $1
      i32.const 3
      i32.shl
      i32.add
      global.set $assembly/common/seed
      global.get $assembly/common/seed
      local.tee $1
      i32.const -1252372727
      i32.xor
      local.get $1
      i32.const 16
      i32.shr_u
      i32.xor
      global.set $assembly/common/seed
      f64.const 1
      f64.const 2
      global.get $assembly/common/seed
      f64.convert_i32_s
      f64.abs
      f64.const 32
      call $~lib/math/NativeMath.pow
      f64.const 1
      f64.sub
      f64.mul
      local.tee $13
      f64.floor
      local.tee $12
      f64.const 0
      f64.ne
      local.get $12
      local.get $12
      f64.eq
      i32.and
      if (result f64)
       local.get $13
       f64.floor
      else
       local.get $13
       f64.ceil
      end
      i64.trunc_f64_s
      f64.convert_i64_s
      f64.const 2147483648
      f64.div
      f64.mul
      f64.sub
      f32.demote_f64
      f32.store
      br $while-continue|5
     end
    end
    local.get $9
    i32.const 1
    i32.add
    local.set $9
    br $for-loop|4
   end
  end
  local.get $6
  i32.const 12252
  i32.gt_u
  if
   local.get $6
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
  local.get $5
  i32.const 12252
  i32.gt_u
  if
   local.get $5
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
  local.get $4
  i32.const 12252
  i32.gt_u
  if
   local.get $4
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
  local.get $11
  i32.const 12252
  i32.gt_u
  if
   local.get $11
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
  local.get $15
 )
 (func $assembly/spmv/spmvCsr (; 66 ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f32)
  (local $9 i32)
  local.get $0
  local.set $6
  loop $for-loop|0
   local.get $7
   i32.const 25000
   i32.lt_s
   if
    local.get $4
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    f32.load
    local.set $8
    local.get $1
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $0
    local.get $1
    local.get $7
    i32.const 1
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $9
    loop $for-loop|1
     local.get $0
     local.get $9
     i32.lt_s
     if
      local.get $8
      local.get $6
      local.get $0
      i32.const 2
      i32.shl
      i32.add
      f32.load
      local.get $3
      local.get $2
      local.get $0
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.const 2
      i32.shl
      i32.add
      f32.load
      f32.mul
      f32.add
      local.set $8
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $for-loop|1
     end
    end
    local.get $5
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    local.get $8
    f32.store
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $for-loop|0
   end
  end
 )
 (func $assembly/spmv/spmv (; 67 ;) (result f64)
  (local $0 i32)
  (local $1 i32)
  (local $2 f64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 f64)
  call $assembly/spmv/generateRandomCSR
  local.set $3
  i32.const 25000
  call $~lib/staticarray/StaticArray<f32>#constructor
  local.set $4
  i32.const 25000
  call $~lib/staticarray/StaticArray<f32>#constructor
  local.set $5
  i32.const 25000
  call $~lib/staticarray/StaticArray<f32>#constructor
  local.set $6
  loop $for-loop|0
   local.get $1
   i32.const 25000
   i32.lt_s
   if
    global.get $assembly/common/seed
    local.tee $0
    i32.const 2127912214
    i32.add
    local.get $0
    i32.const 12
    i32.shl
    i32.add
    global.set $assembly/common/seed
    global.get $assembly/common/seed
    local.tee $0
    i32.const -949894596
    i32.xor
    local.get $0
    i32.const 19
    i32.shr_u
    i32.xor
    global.set $assembly/common/seed
    global.get $assembly/common/seed
    local.tee $0
    i32.const 374761393
    i32.add
    local.get $0
    i32.const 5
    i32.shl
    i32.add
    global.set $assembly/common/seed
    global.get $assembly/common/seed
    local.tee $0
    i32.const -744332180
    i32.add
    local.get $0
    i32.const 9
    i32.shl
    i32.xor
    global.set $assembly/common/seed
    global.get $assembly/common/seed
    local.tee $0
    i32.const -42973499
    i32.add
    local.get $0
    i32.const 3
    i32.shl
    i32.add
    global.set $assembly/common/seed
    global.get $assembly/common/seed
    local.tee $0
    i32.const -1252372727
    i32.xor
    local.get $0
    i32.const 16
    i32.shr_u
    i32.xor
    global.set $assembly/common/seed
    local.get $4
    local.get $1
    i32.const 2
    i32.shl
    i32.add
    f64.const 1
    f64.const 2
    global.get $assembly/common/seed
    f64.convert_i32_s
    f64.abs
    f64.const 32
    call $~lib/math/NativeMath.pow
    f64.const 1
    f64.sub
    f64.mul
    local.tee $2
    f64.floor
    local.tee $7
    f64.const 0
    f64.ne
    local.get $7
    local.get $7
    f64.eq
    i32.and
    if (result f64)
     local.get $2
     f64.floor
    else
     local.get $2
     f64.ceil
    end
    i64.trunc_f64_s
    f64.convert_i64_s
    f64.const 2147483648
    f64.div
    f64.mul
    f64.sub
    f32.demote_f64
    f32.store
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  call $assembly/common/performanceNow
  local.set $2
  i32.const 0
  local.set $1
  loop $for-loop|1
   local.get $1
   i32.const 50
   i32.lt_s
   if
    local.get $3
    i32.load offset=56
    local.get $3
    i32.load offset=48
    local.get $3
    i32.load offset=52
    local.get $4
    local.get $5
    local.get $6
    call $assembly/spmv/spmvCsr
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|1
   end
  end
  call $assembly/common/performanceNow
  local.get $2
  f64.sub
  local.get $3
  i32.const 12252
  i32.gt_u
  if
   local.get $3
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
  local.get $4
  i32.const 12252
  i32.gt_u
  if
   local.get $4
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
  local.get $5
  i32.const 12252
  i32.gt_u
  if
   local.get $5
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
  local.get $6
  i32.const 12252
  i32.gt_u
  if
   local.get $6
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
 )
 (func $~start (; 68 ;)
  call $assembly/spmv/Ziggurat#constructor
  global.set $assembly/spmv/gaussian
 )
 (func $~lib/rt/pure/__collect (; 69 ;)
  nop
 )
 (func $~lib/rt/pure/decrement (; 70 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.const 268435455
  i32.and
  local.tee $2
  i32.const 1
  i32.eq
  if
   local.get $0
   i32.const 16
   i32.add
   call $~lib/rt/__visit_members
   local.get $0
   local.get $0
   i32.load
   i32.const 1
   i32.or
   i32.store
   global.get $~lib/rt/tlsf/ROOT
   local.get $0
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $0
   local.get $2
   i32.const 1
   i32.sub
   local.get $1
   i32.const -268435456
   i32.and
   i32.or
   i32.store offset=4
  end
 )
 (func $~lib/rt/__visit_members (; 71 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $folding-inner2
   block $folding-inner1
    block $folding-inner0
     block $switch$1$default
      block $switch$1$case$21
       block $switch$1$case$16
        block $switch$1$case$14
         block $switch$1$case$8
          block $switch$1$case$6
           block $switch$1$case$4
            block $switch$1$case$2
             local.get $0
             i32.const 8
             i32.sub
             i32.load
             br_table $switch$1$case$2 $switch$1$case$2 $switch$1$case$4 $folding-inner0 $switch$1$case$6 $folding-inner0 $switch$1$case$8 $switch$1$case$2 $folding-inner1 $folding-inner0 $folding-inner0 $switch$1$case$2 $switch$1$case$14 $folding-inner1 $switch$1$case$16 $folding-inner1 $switch$1$case$2 $folding-inner1 $folding-inner1 $switch$1$case$21 $folding-inner0 $folding-inner0 $switch$1$case$4 $folding-inner2 $folding-inner2 $switch$1$default
            end
            return
           end
           local.get $0
           i32.load
           local.tee $0
           if
            local.get $0
            i32.const 12252
            i32.ge_u
            if
             local.get $0
             i32.const 16
             i32.sub
             call $~lib/rt/pure/decrement
            end
           end
           return
          end
          local.get $0
          i32.load offset=4
          local.tee $1
          if
           local.get $1
           i32.const 12252
           i32.ge_u
           if
            local.get $1
            i32.const 16
            i32.sub
            call $~lib/rt/pure/decrement
           end
          end
          local.get $0
          i32.load offset=8
          local.tee $1
          if
           local.get $1
           i32.const 12252
           i32.ge_u
           if
            local.get $1
            i32.const 16
            i32.sub
            call $~lib/rt/pure/decrement
           end
          end
          local.get $0
          i32.load offset=12
          local.tee $0
          if
           local.get $0
           i32.const 12252
           i32.ge_u
           if
            local.get $0
            i32.const 16
            i32.sub
            call $~lib/rt/pure/decrement
           end
          end
          return
         end
         local.get $0
         i32.load
         local.tee $1
         if
          local.get $1
          i32.const 12252
          i32.ge_u
          if
           local.get $1
           i32.const 16
           i32.sub
           call $~lib/rt/pure/decrement
          end
         end
         local.get $0
         i32.load offset=4
         local.tee $1
         if
          local.get $1
          i32.const 12252
          i32.ge_u
          if
           local.get $1
           i32.const 16
           i32.sub
           call $~lib/rt/pure/decrement
          end
         end
         local.get $0
         i32.load offset=8
         local.tee $1
         if
          local.get $1
          i32.const 12252
          i32.ge_u
          if
           local.get $1
           i32.const 16
           i32.sub
           call $~lib/rt/pure/decrement
          end
         end
         local.get $0
         i32.load offset=12
         local.tee $1
         if
          local.get $1
          i32.const 12252
          i32.ge_u
          if
           local.get $1
           i32.const 16
           i32.sub
           call $~lib/rt/pure/decrement
          end
         end
         local.get $0
         i32.load offset=16
         local.tee $1
         if
          local.get $1
          i32.const 12252
          i32.ge_u
          if
           local.get $1
           i32.const 16
           i32.sub
           call $~lib/rt/pure/decrement
          end
         end
         local.get $0
         i32.load offset=20
         local.tee $0
         if
          local.get $0
          i32.const 12252
          i32.ge_u
          if
           local.get $0
           i32.const 16
           i32.sub
           call $~lib/rt/pure/decrement
          end
         end
         return
        end
        local.get $0
        i32.load offset=4
        local.tee $1
        local.get $0
        i32.load offset=12
        i32.const 2
        i32.shl
        i32.add
        local.set $3
        loop $while-continue|0
         local.get $1
         local.get $3
         i32.lt_u
         if
          local.get $1
          i32.load
          local.tee $2
          if
           local.get $2
           i32.const 12252
           i32.ge_u
           if
            local.get $2
            i32.const 16
            i32.sub
            call $~lib/rt/pure/decrement
           end
          end
          local.get $1
          i32.const 4
          i32.add
          local.set $1
          br $while-continue|0
         end
        end
        local.get $0
        i32.load
        local.tee $0
        i32.const 12252
        i32.ge_u
        if
         local.get $0
         i32.const 16
         i32.sub
         call $~lib/rt/pure/decrement
        end
        return
       end
       local.get $0
       i32.load
       local.tee $1
       if
        local.get $1
        i32.const 12252
        i32.ge_u
        if
         local.get $1
         i32.const 16
         i32.sub
         call $~lib/rt/pure/decrement
        end
       end
       local.get $0
       i32.load offset=4
       local.tee $0
       if
        local.get $0
        i32.const 12252
        i32.ge_u
        if
         local.get $0
         i32.const 16
         i32.sub
         call $~lib/rt/pure/decrement
        end
       end
       return
      end
      local.get $0
      i32.load offset=48
      local.tee $1
      if
       local.get $1
       i32.const 12252
       i32.ge_u
       if
        local.get $1
        i32.const 16
        i32.sub
        call $~lib/rt/pure/decrement
       end
      end
      local.get $0
      i32.load offset=52
      local.tee $1
      if
       local.get $1
       i32.const 12252
       i32.ge_u
       if
        local.get $1
        i32.const 16
        i32.sub
        call $~lib/rt/pure/decrement
       end
      end
      local.get $0
      i32.load offset=56
      local.tee $0
      if
       local.get $0
       i32.const 12252
       i32.ge_u
       if
        local.get $0
        i32.const 16
        i32.sub
        call $~lib/rt/pure/decrement
       end
      end
      return
     end
     unreachable
    end
    return
   end
   local.get $0
   local.get $0
   i32.const 16
   i32.sub
   i32.load offset=12
   i32.add
   local.set $2
   loop $while-continue|01
    local.get $0
    local.get $2
    i32.lt_u
    if
     local.get $0
     i32.load
     local.tee $1
     if
      local.get $1
      i32.const 12252
      i32.ge_u
      if
       local.get $1
       i32.const 16
       i32.sub
       call $~lib/rt/pure/decrement
      end
     end
     local.get $0
     i32.const 4
     i32.add
     local.set $0
     br $while-continue|01
    end
   end
   return
  end
  local.get $0
  i32.load
  local.tee $0
  i32.const 12252
  i32.ge_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
 )
)
