.class public Lcom/umeng/common/net/f;
.super Ljava/lang/Object;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field final a:Landroid/os/Messenger;

.field private c:Landroid/content/Context;

.field private d:Lcom/umeng/common/net/s;

.field private e:Landroid/os/Messenger;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:[Ljava/lang/String;

.field private l:Z

.field private m:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/umeng/common/net/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/common/net/f;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/common/net/s;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/common/net/f;->l:Z

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/umeng/common/net/h;

    invoke-direct {v1, p0}, Lcom/umeng/common/net/h;-><init>(Lcom/umeng/common/net/f;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/umeng/common/net/f;->a:Landroid/os/Messenger;

    new-instance v0, Lcom/umeng/common/net/i;

    invoke-direct {v0, p0}, Lcom/umeng/common/net/i;-><init>(Lcom/umeng/common/net/f;)V

    iput-object v0, p0, Lcom/umeng/common/net/f;->m:Landroid/content/ServiceConnection;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/common/net/f;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/umeng/common/net/f;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/umeng/common/net/f;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/umeng/common/net/f;->h:Ljava/lang/String;

    iput-object p5, p0, Lcom/umeng/common/net/f;->d:Lcom/umeng/common/net/s;

    return-void
.end method

.method static synthetic a(Lcom/umeng/common/net/f;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lcom/umeng/common/net/f;->e:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic a(Lcom/umeng/common/net/f;)Lcom/umeng/common/net/s;
    .locals 1

    iget-object v0, p0, Lcom/umeng/common/net/f;->d:Lcom/umeng/common/net/s;

    return-object v0
.end method

.method static synthetic b(Lcom/umeng/common/net/f;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Lcom/umeng/common/net/f;->m:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/umeng/common/net/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/umeng/common/net/f;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/umeng/common/net/f;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/umeng/common/net/f;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/umeng/common/net/f;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/umeng/common/net/f;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/umeng/common/net/f;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/umeng/common/net/f;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/umeng/common/net/f;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/umeng/common/net/f;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/umeng/common/net/f;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/umeng/common/net/f;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/umeng/common/net/f;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/umeng/common/net/f;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/umeng/common/net/f;->k:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/umeng/common/net/f;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/umeng/common/net/f;->l:Z

    return v0
.end method

.method static synthetic k(Lcom/umeng/common/net/f;)Landroid/os/Messenger;
    .locals 1

    iget-object v0, p0, Lcom/umeng/common/net/f;->e:Landroid/os/Messenger;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/umeng/common/net/f;->c:Landroid/content/Context;

    const-class v2, Lcom/umeng/common/net/DownloadingService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/umeng/common/net/f;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/common/net/f;->m:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/umeng/common/net/f;->i:Ljava/lang/String;

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/umeng/common/net/f;->j:Ljava/lang/String;

    return-void
.end method
