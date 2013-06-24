.class Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity$BankAdapter$1;
.super Ljava/lang/Object;
.source "BankHotLineActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity$BankAdapter;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity$BankAdapter;

.field final synthetic val$serviceContentList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity$BankAdapter;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity$BankAdapter$1;->this$1:Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity$BankAdapter;

    iput-object p2, p0, Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity$BankAdapter$1;->val$serviceContentList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 139
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 140
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity$BankAdapter$1;->this$1:Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity$BankAdapter;

    iget-object v1, v0, Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity$BankAdapter;->this$0:Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity;

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity$BankAdapter$1;->val$serviceContentList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/BankServiceContent;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/BankServiceContent;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zhangdan/app/util/CommonMethod;->call(Landroid/content/Context;Ljava/lang/String;)V

    .line 141
    return-void
.end method
