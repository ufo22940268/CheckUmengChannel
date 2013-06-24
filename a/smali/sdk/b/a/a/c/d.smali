.class public Lsdk/b/a/a/c/d;
.super Lcom/igexin/b/b;


# static fields
.field public static A:Z

.field public static B:Z

.field public static C:I

.field public static D:I

.field public static E:Ljava/lang/String;

.field public static F:Ljava/lang/String;

.field public static G:Ljava/lang/String;

.field public static H:Ljava/lang/String;

.field public static final I:Ljava/lang/String;

.field public static final J:Ljava/lang/String;

.field public static c:[Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:[Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Landroid/content/res/Resources;

.field public static m:Ljava/lang/String;

.field public static n:Ljava/lang/String;

.field public static o:Ljava/lang/String;

.field public static p:Z

.field public static q:Z

.field public static r:Z

.field public static s:Z

.field public static final t:Landroid/net/Uri;

.field public static u:I

.field public static v:I

.field public static w:I

.field public static x:Ljava/lang/Boolean;

.field public static y:I

.field public static z:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "socket://sdk.open.talk.igexin.com:5224"

    aput-object v1, v0, v2

    sput-object v0, Lsdk/b/a/a/c/d;->c:[Ljava/lang/String;

    sget-object v0, Lsdk/b/a/a/c/d;->c:[Ljava/lang/String;

    aget-object v0, v0, v2

    sput-object v0, Lsdk/b/a/a/c/d;->d:Ljava/lang/String;

    const-string v0, "http://sdk.open.phone.igexin.com/api.php"

    sput-object v0, Lsdk/b/a/a/c/d;->e:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "socket://sdk.open.talk.igexin.com:5224"

    aput-object v1, v0, v2

    sput-object v0, Lsdk/b/a/a/c/d;->f:[Ljava/lang/String;

    const-string v0, "http://sdk.open.phone.igexin.com:8003/api.php"

    sput-object v0, Lsdk/b/a/a/c/d;->g:Ljava/lang/String;

    sget-object v0, Lsdk/b/a/a/c/d;->e:Ljava/lang/String;

    sput-object v0, Lsdk/b/a/a/c/d;->h:Ljava/lang/String;

    sget-object v0, Lsdk/b/a/a/c/d;->e:Ljava/lang/String;

    sput-object v0, Lsdk/b/a/a/c/d;->i:Ljava/lang/String;

    sget-object v0, Lsdk/b/a/a/c/d;->e:Ljava/lang/String;

    sput-object v0, Lsdk/b/a/a/c/d;->j:Ljava/lang/String;

    const-string v0, "http://115.236.68.59:7474/upload_sms.htm"

    sput-object v0, Lsdk/b/a/a/c/d;->k:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lsdk/b/a/a/c/d;->m:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lsdk/b/a/a/c/d;->n:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lsdk/b/a/a/c/d;->o:Ljava/lang/String;

    sput-boolean v2, Lsdk/b/a/a/c/d;->p:Z

    sput-boolean v2, Lsdk/b/a/a/c/d;->q:Z

    sput-boolean v2, Lsdk/b/a/a/c/d;->r:Z

    sput-boolean v2, Lsdk/b/a/a/c/d;->s:Z

    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lsdk/b/a/a/c/d;->t:Landroid/net/Uri;

    sput v2, Lsdk/b/a/a/c/d;->u:I

    sput v2, Lsdk/b/a/a/c/d;->v:I

    sput v2, Lsdk/b/a/a/c/d;->w:I

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lsdk/b/a/a/c/d;->x:Ljava/lang/Boolean;

    sput v4, Lsdk/b/a/a/c/d;->y:I

    sput v4, Lsdk/b/a/a/c/d;->z:I

    sput-boolean v3, Lsdk/b/a/a/c/d;->A:Z

    sput-boolean v3, Lsdk/b/a/a/c/d;->B:Z

    const-string v0, ""

    sput-object v0, Lsdk/b/a/a/c/d;->E:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lsdk/b/a/a/c/d;->F:Ljava/lang/String;

    const-string v0, "null"

    sput-object v0, Lsdk/b/a/a/c/d;->G:Ljava/lang/String;

    const-string v0, "100001"

    sput-object v0, Lsdk/b/a/a/c/d;->H:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Sdk/ImgCache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsdk/b/a/a/c/d;->I:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Sdk/WebCache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsdk/b/a/a/c/d;->J:Ljava/lang/String;

    return-void
.end method
