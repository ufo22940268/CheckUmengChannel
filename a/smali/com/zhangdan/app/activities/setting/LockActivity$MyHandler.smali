.class Lcom/zhangdan/app/activities/setting/LockActivity$MyHandler;
.super Landroid/os/Handler;
.source "LockActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/setting/LockActivity;
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
            "Lcom/zhangdan/app/activities/setting/LockActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zhangdan/app/activities/setting/LockActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 139
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 140
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity$MyHandler;->mWeakReferenceActivity:Ljava/lang/ref/WeakReference;

    .line 141
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 145
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 146
    iget-object v1, p0, Lcom/zhangdan/app/activities/setting/LockActivity$MyHandler;->mWeakReferenceActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/setting/LockActivity;

    .line 147
    .local v0, activity:Lcom/zhangdan/app/activities/setting/LockActivity;
    if-nez v0, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 151
    invoke-virtual {v0}, Lcom/zhangdan/app/activities/setting/LockActivity;->finish()V

    goto :goto_0
.end method
