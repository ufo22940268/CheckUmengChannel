.class final Lcom/zhangdan/preferential/m;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/zhangdan/preferential/h;


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/h;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/m;->a:Lcom/zhangdan/preferential/h;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/h;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/m;-><init>(Lcom/zhangdan/preferential/h;)V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/zhangdan/preferential/m;->a:Lcom/zhangdan/preferential/h;

    invoke-static {v0}, Lcom/zhangdan/preferential/h;->b(Lcom/zhangdan/preferential/h;)Lcom/zhangdan/preferential/a/f;

    iget-object v0, p0, Lcom/zhangdan/preferential/m;->a:Lcom/zhangdan/preferential/h;

    invoke-static {v0}, Lcom/zhangdan/preferential/h;->b(Lcom/zhangdan/preferential/h;)Lcom/zhangdan/preferential/a/f;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/preferential/m;->a:Lcom/zhangdan/preferential/h;

    invoke-static {v1}, Lcom/zhangdan/preferential/h;->c(Lcom/zhangdan/preferential/h;)Lcom/zhangdan/preferential/a/o;

    iget-object v1, p0, Lcom/zhangdan/preferential/m;->a:Lcom/zhangdan/preferential/h;

    invoke-static {v1}, Lcom/zhangdan/preferential/h;->d(Lcom/zhangdan/preferential/h;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/zhangdan/preferential/data/model/d;

    const/16 v3, 0x2390

    invoke-direct {v2, v3}, Lcom/zhangdan/preferential/data/model/d;-><init>(I)V

    invoke-virtual {v2, v1}, Lcom/zhangdan/preferential/data/model/d;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/zhangdan/preferential/data/model/d;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/a/f;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/preferential/a/f;->n(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/zhangdan/preferential/m;->a:Lcom/zhangdan/preferential/h;

    invoke-static {v0}, Lcom/zhangdan/preferential/h;->a(Lcom/zhangdan/preferential/h;)Lcom/zhangdan/preferential/widget/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/preferential/widget/e;->dismiss()V

    iget-object v0, p0, Lcom/zhangdan/preferential/m;->a:Lcom/zhangdan/preferential/h;

    invoke-static {v0}, Lcom/zhangdan/preferential/h;->e(Lcom/zhangdan/preferential/h;)Lcom/zhangdan/preferential/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zhangdan/preferential/i;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/m;->a:Lcom/zhangdan/preferential/h;

    invoke-static {v0}, Lcom/zhangdan/preferential/h;->e(Lcom/zhangdan/preferential/h;)Lcom/zhangdan/preferential/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/preferential/i;->notifyDataSetInvalidated()V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/m;->a:Lcom/zhangdan/preferential/h;

    invoke-static {v0}, Lcom/zhangdan/preferential/h;->a(Lcom/zhangdan/preferential/h;)Lcom/zhangdan/preferential/widget/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/preferential/widget/e;->show()V

    return-void
.end method
