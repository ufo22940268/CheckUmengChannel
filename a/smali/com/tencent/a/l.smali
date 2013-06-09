.class final Lcom/tencent/a/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tauth/b;


# instance fields
.field private a:Lcom/tencent/tauth/b;


# direct methods
.method public constructor <init>(Lcom/tencent/tauth/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/a/l;->a:Lcom/tencent/tauth/b;

    return-void
.end method

.method static synthetic a(Lcom/tencent/a/l;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-static {p1}, Lcom/tencent/a/n;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/a/l;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    new-instance v0, Lcom/tencent/tauth/d;

    const/4 v1, -0x4

    const-string v2, "\u670d\u52a1\u5668\u8fd4\u56de\u6570\u636e\u683c\u5f0f\u6709\u8bef!"

    invoke-direct {v0, v1, v2, p1}, Lcom/tencent/tauth/d;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tencent/a/l;->a(Lcom/tencent/tauth/d;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/l;->a:Lcom/tencent/tauth/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/a/l;->a:Lcom/tencent/tauth/b;

    invoke-interface {v0}, Lcom/tencent/tauth/b;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/a/l;->a:Lcom/tencent/tauth/b;

    :cond_0
    return-void
.end method

.method public final a(Lcom/tencent/tauth/d;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/l;->a:Lcom/tencent/tauth/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/a/l;->a:Lcom/tencent/tauth/b;

    invoke-interface {v0, p1}, Lcom/tencent/tauth/b;->a(Lcom/tencent/tauth/d;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/a/l;->a:Lcom/tencent/tauth/b;

    :cond_0
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/l;->a:Lcom/tencent/tauth/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/a/l;->a:Lcom/tencent/tauth/b;

    invoke-interface {v0, p1}, Lcom/tencent/tauth/b;->a(Lorg/json/JSONObject;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/a/l;->a:Lcom/tencent/tauth/b;

    :cond_0
    return-void
.end method
