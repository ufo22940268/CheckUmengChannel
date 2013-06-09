.class final Lcom/zhangdan/app/activities/newimport/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/newimport/j;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/newimport/j;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/newimport/n;->a:Lcom/zhangdan/app/activities/newimport/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/newimport/n;)Lcom/zhangdan/app/activities/newimport/j;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/n;->a:Lcom/zhangdan/app/activities/newimport/j;

    return-object v0
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 6

    const/4 v5, 0x1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/n;->a:Lcom/zhangdan/app/activities/newimport/j;

    invoke-static {v1}, Lcom/zhangdan/app/activities/newimport/j;->b(Lcom/zhangdan/app/activities/newimport/j;)Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-array v1, v5, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/n;->a:Lcom/zhangdan/app/activities/newimport/j;

    invoke-static {v3}, Lcom/zhangdan/app/activities/newimport/j;->b(Lcom/zhangdan/app/activities/newimport/j;)Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    move-result-object v3

    const v4, 0x7f080129

    invoke-virtual {v3, v4}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Lcom/zhangdan/app/activities/newimport/o;

    invoke-direct {v2, p0, p1}, Lcom/zhangdan/app/activities/newimport/o;-><init>(Lcom/zhangdan/app/activities/newimport/n;Landroid/view/View;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return v5
.end method
