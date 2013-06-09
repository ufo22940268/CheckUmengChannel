.class final Lcom/zhangdan/app/activities/remark/c;
.super Landroid/os/Handler;


# instance fields
.field a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/zhangdan/app/activities/remark/BillRemarkActivity;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/remark/c;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->k()V

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->j()V

    goto :goto_0

    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-static {v0}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->a(Lcom/zhangdan/app/activities/remark/BillRemarkActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    invoke-static {v0}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->a(Lcom/zhangdan/app/activities/remark/BillRemarkActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->a(Lcom/zhangdan/app/activities/remark/BillRemarkActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    invoke-static {v0}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->a(Lcom/zhangdan/app/activities/remark/BillRemarkActivity;)Landroid/widget/EditText;

    move-result-object v1

    :try_start_0
    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
