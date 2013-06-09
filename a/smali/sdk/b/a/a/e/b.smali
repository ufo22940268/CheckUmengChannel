.class public final Lsdk/b/a/a/e/b;
.super Lsdk/c/a/e/b;


# instance fields
.field a:Lcom/igexin/sdk/SdkMainService;


# direct methods
.method public constructor <init>(Lcom/igexin/sdk/SdkMainService;)V
    .locals 1

    invoke-direct {p0}, Lsdk/c/a/e/b;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsdk/b/a/a/e/b;->b:Z

    iput-object p1, p0, Lsdk/b/a/a/e/b;->a:Lcom/igexin/sdk/SdkMainService;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    invoke-super {p0}, Lsdk/c/a/e/b;->a()V

    return-void
.end method

.method public final b()V
    .locals 1

    sget-boolean v0, Lsdk/b/a/a/c/h;->y:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/igexin/sdk/SdkMainService;->m:Lsdk/b/a/a/e/d/e;

    :cond_0
    invoke-super {p0}, Lsdk/c/a/e/b;->a()V

    return-void
.end method
