.class public final Lcom/zhangdan/preferential/a/x;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Lcom/zhangdan/preferential/a/aa;

.field private b:Lcom/zhangdan/preferential/a/f;

.field private c:Lcom/zhangdan/preferential/a/o;

.field private d:Lcom/zhangdan/preferential/a/y;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/zhangdan/preferential/a/y;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Lcom/zhangdan/preferential/a/f;

    invoke-direct {v0, p1}, Lcom/zhangdan/preferential/a/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/a/x;->b:Lcom/zhangdan/preferential/a/f;

    new-instance v0, Lcom/zhangdan/preferential/a/o;

    invoke-direct {v0}, Lcom/zhangdan/preferential/a/o;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/a/x;->c:Lcom/zhangdan/preferential/a/o;

    new-instance v0, Lcom/zhangdan/preferential/a/aa;

    invoke-direct {v0, p1}, Lcom/zhangdan/preferential/a/aa;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/a/x;->a:Lcom/zhangdan/preferential/a/aa;

    iput-object p2, p0, Lcom/zhangdan/preferential/a/x;->d:Lcom/zhangdan/preferential/a/y;

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    check-cast p1, [Ljava/lang/String;

    aget-object v1, p1, v0

    iget-object v2, p0, Lcom/zhangdan/preferential/a/x;->b:Lcom/zhangdan/preferential/a/f;

    iget-object v2, p0, Lcom/zhangdan/preferential/a/x;->b:Lcom/zhangdan/preferential/a/f;

    iget-object v3, p0, Lcom/zhangdan/preferential/a/x;->c:Lcom/zhangdan/preferential/a/o;

    invoke-static {v1}, Lcom/zhangdan/preferential/a/o;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/zhangdan/preferential/a/f;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/zhangdan/preferential/a/f;->j(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/zhangdan/preferential/a/x;->d:Lcom/zhangdan/preferential/a/y;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/zhangdan/preferential/a/y;->a(Z)V

    return-void
.end method
