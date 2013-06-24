.class Lcom/zhangdan/app/activities/remark/BillRemarkActivity$MyHandler;
.super Landroid/os/Handler;
.source "BillRemarkActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/remark/BillRemarkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyHandler"
.end annotation


# instance fields
.field mWeakReferenceActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/zhangdan/app/activities/remark/BillRemarkActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zhangdan/app/activities/remark/BillRemarkActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 309
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 310
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity$MyHandler;->mWeakReferenceActivity:Ljava/lang/ref/WeakReference;

    .line 311
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 315
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 316
    iget-object v1, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity$MyHandler;->mWeakReferenceActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;

    .line 317
    .local v0, activity:Lcom/zhangdan/app/activities/remark/BillRemarkActivity;
    if-nez v0, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 321
    invoke-virtual {v0}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->stopSearch()V

    .line 322
    invoke-virtual {v0}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->startSearch()V

    goto :goto_0

    .line 323
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 324
    #getter for: Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mEtTopStoreName:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->access$000(Lcom/zhangdan/app/activities/remark/BillRemarkActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 325
    #getter for: Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mEtTopStoreName:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->access$000(Lcom/zhangdan/app/activities/remark/BillRemarkActivity;)Landroid/widget/EditText;

    move-result-object v1

    #getter for: Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mEtTopStoreName:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->access$000(Lcom/zhangdan/app/activities/remark/BillRemarkActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 327
    #getter for: Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mEtTopStoreName:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->access$000(Lcom/zhangdan/app/activities/remark/BillRemarkActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/util/CommonMethod;->showSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0
.end method
