.class final Lcom/zhangdan/app/activities/bankservice/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;

.field private final synthetic b:Ljava/util/List;

.field private final synthetic c:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;Ljava/util/List;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/bankservice/h;->a:Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;

    iput-object p2, p0, Lcom/zhangdan/app/activities/bankservice/h;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/zhangdan/app/activities/bankservice/h;->c:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/h;->a:Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v3

    if-lt v1, v0, :cond_0

    new-instance v0, Lcom/zhangdan/app/activities/bankservice/i;

    iget-object v1, p0, Lcom/zhangdan/app/activities/bankservice/h;->c:Landroid/widget/EditText;

    invoke-direct {v0, p0, v1, v4}, Lcom/zhangdan/app/activities/bankservice/i;-><init>(Lcom/zhangdan/app/activities/bankservice/h;Landroid/widget/EditText;[Ljava/lang/String;)V

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/h;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/j;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->g()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zhangdan/app/h/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->h()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
