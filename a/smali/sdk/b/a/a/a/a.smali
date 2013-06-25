.class public abstract Lsdk/b/a/a/a/a;
.super Ljava/lang/Object;


# instance fields
.field protected a:Z

.field protected b:Lcom/igexin/sdk/SdkMainService;


# direct methods
.method public constructor <init>(Lcom/igexin/sdk/SdkMainService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsdk/b/a/a/a/a;->b:Lcom/igexin/sdk/SdkMainService;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(Ljava/lang/Object;Lsdk/c/a/e/e;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a(Lsdk/c/a/e/d;Lsdk/c/a/e/e;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract b()V
.end method

.method public final c()V
    .locals 1

    iget-boolean v0, p0, Lsdk/b/a/a/a/a;->a:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lsdk/b/a/a/a/a;->b()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsdk/b/a/a/a/a;->a:Z

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lsdk/b/a/a/a/a;->a:Z

    return v0
.end method
