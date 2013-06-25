.class Lcom/zhangdan/banka/view/ComJSInterface$11;
.super Ljava/lang/Object;
.source "ComJSInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/banka/view/ComJSInterface;->showDefaultImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/banka/view/ComJSInterface;


# direct methods
.method constructor <init>(Lcom/zhangdan/banka/view/ComJSInterface;)V
    .locals 0
    .parameter

    .prologue
    .line 566
    iput-object p1, p0, Lcom/zhangdan/banka/view/ComJSInterface$11;->this$0:Lcom/zhangdan/banka/view/ComJSInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/zhangdan/banka/view/ComJSInterface$11;->this$0:Lcom/zhangdan/banka/view/ComJSInterface;

    #getter for: Lcom/zhangdan/banka/view/ComJSInterface;->mActivity:Lcom/zhangdan/banka/activities/BankaActivity;
    invoke-static {v0}, Lcom/zhangdan/banka/view/ComJSInterface;->access$200(Lcom/zhangdan/banka/view/ComJSInterface;)Lcom/zhangdan/banka/activities/BankaActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/banka/activities/BankaActivity;->showDefaultImage()V

    .line 570
    return-void
.end method
