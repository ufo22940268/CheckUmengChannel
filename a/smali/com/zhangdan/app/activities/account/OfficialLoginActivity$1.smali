.class Lcom/zhangdan/app/activities/account/OfficialLoginActivity$1;
.super Ljava/lang/Object;
.source "OfficialLoginActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->initContentViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/account/OfficialLoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$1;->this$0:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 107
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 105
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$1;->this$0:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    #getter for: Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mEtPwd:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->access$000(Lcom/zhangdan/app/activities/account/OfficialLoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 103
    return-void
.end method
