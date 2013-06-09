.class final Lcom/zhangdan/app/activities/account/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/account/OfficialLoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/account/d;->a:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/d;->a:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->c(Lcom/zhangdan/app/activities/account/OfficialLoginActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/k;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/k;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/activities/account/d;->a:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    invoke-static {v2}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->d(Lcom/zhangdan/app/activities/account/OfficialLoginActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/account/d;->a:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/k;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->a(Lcom/zhangdan/app/activities/account/OfficialLoginActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/d;->a:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->e(Lcom/zhangdan/app/activities/account/OfficialLoginActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/d;->a:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->b(Lcom/zhangdan/app/activities/account/OfficialLoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "******"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
