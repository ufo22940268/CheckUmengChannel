.class Lcom/zhangdan/app/activities/sms/SmsBillActivity$MyHandler;
.super Landroid/os/Handler;
.source "SmsBillActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/sms/SmsBillActivity;
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
            "Lcom/zhangdan/app/activities/sms/SmsBillActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zhangdan/app/activities/sms/SmsBillActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 332
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 333
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity$MyHandler;->mWeakReferenceActivity:Ljava/lang/ref/WeakReference;

    .line 335
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 338
    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity$MyHandler;->mWeakReferenceActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/sms/SmsBillActivity;

    .line 339
    .local v0, activity:Lcom/zhangdan/app/activities/sms/SmsBillActivity;
    if-nez v0, :cond_0

    .line 346
    :goto_0
    return-void

    .line 341
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 343
    :pswitch_0
    #calls: Lcom/zhangdan/app/activities/sms/SmsBillActivity;->update()V
    invoke-static {v0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->access$600(Lcom/zhangdan/app/activities/sms/SmsBillActivity;)V

    goto :goto_0

    .line 341
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
