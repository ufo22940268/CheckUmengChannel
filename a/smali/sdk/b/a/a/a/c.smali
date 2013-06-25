.class Lsdk/b/a/a/a/c;
.super Lsdk/b/a/a/e/d/f;


# instance fields
.field final synthetic a:Lsdk/b/a/a/a/b;


# direct methods
.method constructor <init>(Lsdk/b/a/a/a/b;J)V
    .locals 0

    iput-object p1, p0, Lsdk/b/a/a/a/c;->a:Lsdk/b/a/a/a/b;

    invoke-direct {p0, p2, p3}, Lsdk/b/a/a/e/d/f;-><init>(J)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    sget-boolean v0, Lsdk/b/a/a/c/h;->y:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lsdk/b/a/a/a/c;->a:Lsdk/b/a/a/a/b;

    iget-object v0, v0, Lsdk/b/a/a/a/b;->b:Lcom/igexin/sdk/SdkMainService;

    invoke-virtual {v0}, Lcom/igexin/sdk/SdkMainService;->g()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    sput v0, Lsdk/b/a/a/a/b;->e:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez v0, :cond_0

    iget-object v0, p0, Lsdk/b/a/a/a/c;->a:Lsdk/b/a/a/a/b;

    iget-object v0, v0, Lsdk/b/a/a/a/b;->b:Lcom/igexin/sdk/SdkMainService;

    iget-object v0, v0, Lcom/igexin/sdk/SdkMainService;->b:Lsdk/c/a/b/d;

    new-instance v1, Lsdk/b/a/a/e/c;

    invoke-direct {v1}, Lsdk/b/a/a/e/c;-><init>()V

    invoke-virtual {v0, v1}, Lsdk/c/a/b/d;->a(Ljava/lang/Object;)Z

    iget-object v0, p0, Lsdk/b/a/a/a/c;->a:Lsdk/b/a/a/a/b;

    iget-object v0, v0, Lsdk/b/a/a/a/b;->b:Lcom/igexin/sdk/SdkMainService;

    iget-object v0, v0, Lcom/igexin/sdk/SdkMainService;->b:Lsdk/c/a/b/d;

    invoke-virtual {v0}, Lsdk/c/a/b/d;->d()V

    goto :goto_0
.end method

.method public b()I
    .locals 1

    const/high16 v0, -0x8000

    return v0
.end method
