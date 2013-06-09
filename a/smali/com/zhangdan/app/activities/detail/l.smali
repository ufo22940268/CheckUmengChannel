.class final Lcom/zhangdan/app/activities/detail/l;
.super Lcom/a/a/a/e/a/a;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

.field private b:Landroid/app/Dialog;

.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/l;->a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-direct {p0}, Lcom/a/a/a/e/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object v1, p1, v1

    const/4 v2, 0x2

    aget-object v2, p1, v2

    const/4 v3, 0x3

    aget-object v3, p1, v3

    iput-object v3, p0, Lcom/zhangdan/app/activities/detail/l;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/l;->c:Ljava/lang/String;

    const-string v4, "http://www.51zhangdan.com/service/bill/set.ashx?"

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "action"

    const-string v8, "save_ub_edit"

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "ub_id"

    invoke-direct {v6, v7, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "credit_limit"

    invoke-direct {v2, v6, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "token"

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "user_id"

    invoke-direct {v0, v2, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v4, v5}, Lcom/zhangdan/app/d/b;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/data/model/http/k;->b(Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/k;

    move-result-object v0

    return-object v0
.end method

.method protected final a()V
    .locals 3

    invoke-super {p0}, Lcom/a/a/a/e/a/a;->a()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/l;->a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/l;->a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    const v2, 0x7f080126

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/l;->b:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/l;->b:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/l;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/zhangdan/app/data/model/http/k;

    invoke-super {p0, p1}, Lcom/a/a/a/e/a/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/l;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/l;->a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/l;->a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    const v2, 0x7f080022

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/k;->a()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/l;->a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/l;->a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    const v2, 0x7f08017d

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/l;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-int v1, v0

    int-to-float v1, v1

    sub-float v1, v0, v1

    float-to-int v0, v0

    const/high16 v2, 0x4000

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/l;->a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-static {v1}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->d(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)Lcom/zhangdan/app/data/model/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/data/model/j;->a(F)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/l;->a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->e(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)Lcom/zhangdan/app/activities/detail/a/b;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/l;->a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->e(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)Lcom/zhangdan/app/activities/detail/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/detail/a/b;->d()V

    :cond_2
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/l;->a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->f(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)Lcom/zhangdan/app/activities/detail/a/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/l;->a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->f(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)Lcom/zhangdan/app/activities/detail/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/detail/a/h;->a()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/l;->a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/k;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
