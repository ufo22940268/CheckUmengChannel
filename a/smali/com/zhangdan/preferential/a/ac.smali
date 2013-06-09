.class final Lcom/zhangdan/preferential/a/ac;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/zhangdan/preferential/a/ab;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/zhangdan/preferential/a/ab;I)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/a/ac;->a:Lcom/zhangdan/preferential/a/ab;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput p2, p0, Lcom/zhangdan/preferential/a/ac;->b:I

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, [Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/zhangdan/preferential/a/ac;->a:Lcom/zhangdan/preferential/a/ab;

    invoke-static {v0}, Lcom/zhangdan/preferential/a/ab;->a(Lcom/zhangdan/preferential/a/ab;)Lcom/zhangdan/preferential/a/f;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/a/f;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/zhangdan/preferential/a/ac;->a:Lcom/zhangdan/preferential/a/ab;

    invoke-static {v0}, Lcom/zhangdan/preferential/a/ab;->b(Lcom/zhangdan/preferential/a/ab;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/zhangdan/preferential/a/ac;->b:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
