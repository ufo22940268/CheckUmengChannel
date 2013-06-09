.class final Lcom/zhangdan/preferential/q;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/zhangdan/preferential/MainMapActivity;


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/MainMapActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/q;->a:Lcom/zhangdan/preferential/MainMapActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/MainMapActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/q;-><init>(Lcom/zhangdan/preferential/MainMapActivity;)V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/preferential/q;->a:Lcom/zhangdan/preferential/MainMapActivity;

    invoke-static {v0}, Lcom/zhangdan/preferential/MainMapActivity;->b(Lcom/zhangdan/preferential/MainMapActivity;)Lcom/zhangdan/preferential/a/f;

    iget-object v0, p0, Lcom/zhangdan/preferential/q;->a:Lcom/zhangdan/preferential/MainMapActivity;

    invoke-static {v0}, Lcom/zhangdan/preferential/MainMapActivity;->b(Lcom/zhangdan/preferential/MainMapActivity;)Lcom/zhangdan/preferential/a/f;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/preferential/q;->a:Lcom/zhangdan/preferential/MainMapActivity;

    invoke-static {v1}, Lcom/zhangdan/preferential/MainMapActivity;->c(Lcom/zhangdan/preferential/MainMapActivity;)Lcom/zhangdan/preferential/a/o;

    invoke-static {}, Lcom/zhangdan/preferential/a/o;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/a/f;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/preferential/a/f;->m(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/preferential/q;->a:Lcom/zhangdan/preferential/MainMapActivity;

    invoke-static {v0}, Lcom/zhangdan/preferential/MainMapActivity;->e(Lcom/zhangdan/preferential/MainMapActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/preferential/q;->a:Lcom/zhangdan/preferential/MainMapActivity;

    invoke-static {v0}, Lcom/zhangdan/preferential/MainMapActivity;->f(Lcom/zhangdan/preferential/MainMapActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/preferential/q;->a:Lcom/zhangdan/preferential/MainMapActivity;

    invoke-static {v0}, Lcom/zhangdan/preferential/MainMapActivity;->e(Lcom/zhangdan/preferential/MainMapActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/data/model/g;

    iget-object v2, p0, Lcom/zhangdan/preferential/q;->a:Lcom/zhangdan/preferential/MainMapActivity;

    invoke-static {v2}, Lcom/zhangdan/preferential/MainMapActivity;->e(Lcom/zhangdan/preferential/MainMapActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0
.end method
