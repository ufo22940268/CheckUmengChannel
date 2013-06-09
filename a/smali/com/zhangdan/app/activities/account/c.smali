.class final Lcom/zhangdan/app/activities/account/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/account/OfficialLoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/account/c;->a:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/c;->a:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->b(Lcom/zhangdan/app/activities/account/OfficialLoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
