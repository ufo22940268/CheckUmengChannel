.class final Lcom/zhangdan/app/activities/mailimport/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zhangdan/app/activities/mailimport/b/e;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/mailimport/f;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/mailimport/f;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/mailimport/g;->a:Lcom/zhangdan/app/activities/mailimport/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "code : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/g;->a:Lcom/zhangdan/app/activities/mailimport/f;

    invoke-static {v0}, Lcom/zhangdan/app/activities/mailimport/f;->a(Lcom/zhangdan/app/activities/mailimport/f;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/g;->a:Lcom/zhangdan/app/activities/mailimport/f;

    invoke-static {v0}, Lcom/zhangdan/app/activities/mailimport/f;->b(Lcom/zhangdan/app/activities/mailimport/f;)V

    new-instance v0, Lcom/zhangdan/app/activities/mailimport/m;

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/g;->a:Lcom/zhangdan/app/activities/mailimport/f;

    invoke-static {v1}, Lcom/zhangdan/app/activities/mailimport/f;->a(Lcom/zhangdan/app/activities/mailimport/f;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zhangdan/app/activities/mailimport/m;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/g;->a:Lcom/zhangdan/app/activities/mailimport/f;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/mailimport/m;->a(Lcom/zhangdan/app/activities/mailimport/n;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/g;->a:Lcom/zhangdan/app/activities/mailimport/f;

    invoke-static {v1}, Lcom/zhangdan/app/activities/mailimport/f;->c(Lcom/zhangdan/app/activities/mailimport/f;)Lcom/zhangdan/app/widget/EmailEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhangdan/app/widget/EmailEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/g;->a:Lcom/zhangdan/app/activities/mailimport/f;

    invoke-static {v2}, Lcom/zhangdan/app/activities/mailimport/f;->d(Lcom/zhangdan/app/activities/mailimport/f;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zhangdan/app/activities/mailimport/g;->a:Lcom/zhangdan/app/activities/mailimport/f;

    invoke-static {v3}, Lcom/zhangdan/app/activities/mailimport/f;->e(Lcom/zhangdan/app/activities/mailimport/f;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/zhangdan/app/activities/mailimport/g;->a:Lcom/zhangdan/app/activities/mailimport/f;

    invoke-static {v6}, Lcom/zhangdan/app/activities/mailimport/f;->f(Lcom/zhangdan/app/activities/mailimport/f;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/zhangdan/app/activities/mailimport/g;->a:Lcom/zhangdan/app/activities/mailimport/f;

    invoke-static {v6}, Lcom/zhangdan/app/activities/mailimport/f;->g(Lcom/zhangdan/app/activities/mailimport/f;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    const/4 v1, 0x3

    aput-object v2, v4, v1

    const/4 v1, 0x4

    aput-object v3, v4, v1

    const/4 v1, 0x5

    aput-object p1, v4, v1

    const/4 v1, 0x6

    const-string v2, ""

    aput-object v2, v4, v1

    invoke-virtual {v0, v4}, Lcom/zhangdan/app/activities/mailimport/m;->b([Ljava/lang/Object;)Lcom/a/a/a/e/a/a;

    goto :goto_0
.end method
