.class final Lcom/igexin/sdk/l;
.super Lcom/igexin/sdk/aidl/g;


# instance fields
.field final synthetic a:Lcom/igexin/sdk/SdkMainService;


# direct methods
.method constructor <init>(Lcom/igexin/sdk/SdkMainService;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/sdk/l;->a:Lcom/igexin/sdk/SdkMainService;

    invoke-direct {p0}, Lcom/igexin/sdk/aidl/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([Lcom/igexin/sdk/aidl/Tag;)I
    .locals 1

    invoke-static {p1}, Lcom/igexin/sdk/a;->a([Lcom/igexin/sdk/c;)I

    move-result v0

    return v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/igexin/sdk/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    sput-object p3, Lsdk/b/a/a/c/d;->m:Ljava/lang/String;

    sput-object p2, Lsdk/b/a/a/c/d;->o:Ljava/lang/String;

    sput-object p1, Lsdk/b/a/a/c/d;->n:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    invoke-static {}, Lcom/igexin/sdk/a;->b()V

    return-void
.end method

.method public final a(I)Z
    .locals 1

    invoke-static {p1}, Lcom/igexin/sdk/a;->a(I)Z

    move-result v0

    return v0
.end method

.method public final a(II)Z
    .locals 1

    iget-object v0, p0, Lcom/igexin/sdk/l;->a:Lcom/igexin/sdk/SdkMainService;

    invoke-virtual {v0}, Lcom/igexin/sdk/SdkMainService;->getPackageName()Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/igexin/sdk/a;->a(II)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;[B)Z
    .locals 1

    invoke-static {p1, p2}, Lcom/igexin/sdk/a;->a(Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lsdk/c/a/b/d;->c()Lsdk/c/a/b/d;

    move-result-object v0

    iget-wide v0, v0, Lsdk/c/a/b/d;->b:J

    sput-wide v0, Lcom/igexin/sdk/aidl/GexinSdkNetstat;->a:J

    invoke-static {}, Lsdk/c/a/b/d;->c()Lsdk/c/a/b/d;

    move-result-object v0

    iget-wide v0, v0, Lsdk/c/a/b/d;->c:J

    sput-wide v0, Lcom/igexin/sdk/aidl/GexinSdkNetstat;->b:J

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/igexin/sdk/a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .locals 1

    invoke-static {}, Lcom/igexin/sdk/a;->d()Z

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "instance = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->p()Lcom/igexin/sdk/SdkMainService;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lsdk/c/a/c/a;->c()V

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->p()Lcom/igexin/sdk/SdkMainService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->p()Lcom/igexin/sdk/SdkMainService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/sdk/SdkMainService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->p()Lcom/igexin/sdk/SdkMainService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/sdk/SdkMainService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/igexin/sdk/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
