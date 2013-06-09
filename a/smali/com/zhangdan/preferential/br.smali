.class final Lcom/zhangdan/preferential/br;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/zhangdan/preferential/TicketListActivity;


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/TicketListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/br;->a:Lcom/zhangdan/preferential/TicketListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/TicketListActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/br;-><init>(Lcom/zhangdan/preferential/TicketListActivity;)V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    new-instance v1, Lcom/zhangdan/preferential/a/f;

    iget-object v2, p0, Lcom/zhangdan/preferential/br;->a:Lcom/zhangdan/preferential/TicketListActivity;

    invoke-direct {v1, v2}, Lcom/zhangdan/preferential/a/f;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/zhangdan/preferential/a/o;

    invoke-direct {v2}, Lcom/zhangdan/preferential/a/o;-><init>()V

    new-instance v2, Lcom/zhangdan/preferential/data/model/d;

    const/16 v3, 0x836

    invoke-direct {v2, v3}, Lcom/zhangdan/preferential/data/model/d;-><init>(I)V

    const-string v3, "id"

    invoke-virtual {v2, v3, v0}, Lcom/zhangdan/preferential/data/model/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/zhangdan/preferential/data/model/d;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zhangdan/preferential/a/f;->f(Lorg/json/JSONObject;)Lcom/zhangdan/preferential/data/model/l;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/zhangdan/preferential/data/model/l;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zhangdan/preferential/br;->a:Lcom/zhangdan/preferential/TicketListActivity;

    iget-object v1, p1, Lcom/zhangdan/preferential/data/model/l;->z:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/zhangdan/preferential/TicketListActivity;->a(Lcom/zhangdan/preferential/TicketListActivity;Ljava/util/List;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/br;->a:Lcom/zhangdan/preferential/TicketListActivity;

    invoke-static {v0}, Lcom/zhangdan/preferential/TicketListActivity;->a(Lcom/zhangdan/preferential/TicketListActivity;)Lcom/zhangdan/preferential/bs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/preferential/bs;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
