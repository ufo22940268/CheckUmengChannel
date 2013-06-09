.class final Lcom/zhangdan/app/activities/newimport/i;
.super Lcom/a/a/a/e/a/a;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/newimport/f;

.field private b:Landroid/app/Dialog;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/zhangdan/app/activities/newimport/f;I)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/newimport/i;->a:Lcom/zhangdan/app/activities/newimport/f;

    invoke-direct {p0}, Lcom/a/a/a/e/a/a;-><init>()V

    iput p2, p0, Lcom/zhangdan/app/activities/newimport/i;->c:I

    return-void
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    check-cast p1, [Ljava/lang/String;

    iget v1, p0, Lcom/zhangdan/app/activities/newimport/i;->c:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/i;->a:Lcom/zhangdan/app/activities/newimport/f;

    invoke-static {v1}, Lcom/zhangdan/app/activities/newimport/f;->a(Lcom/zhangdan/app/activities/newimport/f;)Landroid/app/Activity;

    move-result-object v1

    aget-object v2, p1, v2

    invoke-static {v1, v2}, Lcom/zhangdan/app/b/a;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/aq;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/aq;->a()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/zhangdan/app/activities/newimport/i;->a:Lcom/zhangdan/app/activities/newimport/f;

    invoke-static {v2}, Lcom/zhangdan/app/activities/newimport/f;->a(Lcom/zhangdan/app/activities/newimport/f;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/aq;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zhangdan/app/data/db/b/n;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    return-object v0

    :cond_0
    iget v1, p0, Lcom/zhangdan/app/activities/newimport/i;->c:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/i;->a:Lcom/zhangdan/app/activities/newimport/f;

    invoke-static {v1}, Lcom/zhangdan/app/activities/newimport/f;->a(Lcom/zhangdan/app/activities/newimport/f;)Landroid/app/Activity;

    move-result-object v1

    aget-object v2, p1, v2

    invoke-static {v1, v2}, Lcom/zhangdan/app/b/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/aq;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/zhangdan/app/activities/newimport/i;->c:I

    if-ne v1, v4, :cond_3

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/i;->a:Lcom/zhangdan/app/activities/newimport/f;

    invoke-static {v1}, Lcom/zhangdan/app/activities/newimport/f;->a(Lcom/zhangdan/app/activities/newimport/f;)Landroid/app/Activity;

    move-result-object v1

    aget-object v2, p1, v2

    aget-object v3, p1, v3

    aget-object v4, p1, v4

    invoke-static {v1, v2, v3, v4}, Lcom/zhangdan/app/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/aq;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method protected final a()V
    .locals 3

    invoke-super {p0}, Lcom/a/a/a/e/a/a;->a()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/i;->a:Lcom/zhangdan/app/activities/newimport/f;

    invoke-static {v0}, Lcom/zhangdan/app/activities/newimport/f;->a(Lcom/zhangdan/app/activities/newimport/f;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/i;->a:Lcom/zhangdan/app/activities/newimport/f;

    invoke-static {v1}, Lcom/zhangdan/app/activities/newimport/f;->a(Lcom/zhangdan/app/activities/newimport/f;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f08001c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/i;->a:Lcom/zhangdan/app/activities/newimport/f;

    invoke-static {v1}, Lcom/zhangdan/app/activities/newimport/f;->a(Lcom/zhangdan/app/activities/newimport/f;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f08002f

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/i;->b:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/i;->b:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/i;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/zhangdan/app/data/model/http/aq;

    invoke-super {p0, p1}, Lcom/a/a/a/e/a/a;->a(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/i;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/i;->a:Lcom/zhangdan/app/activities/newimport/f;

    invoke-static {v0, p1}, Lcom/zhangdan/app/activities/newimport/f;->a(Lcom/zhangdan/app/activities/newimport/f;Lcom/zhangdan/app/data/model/http/aq;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
