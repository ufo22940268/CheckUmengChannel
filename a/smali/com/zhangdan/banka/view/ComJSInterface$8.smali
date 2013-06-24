.class Lcom/zhangdan/banka/view/ComJSInterface$8;
.super Ljava/lang/Object;
.source "ComJSInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/banka/view/ComJSInterface;->getPhoto(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/banka/view/ComJSInterface;

.field final synthetic val$height:I

.field final synthetic val$quality:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/zhangdan/banka/view/ComJSInterface;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 390
    iput-object p1, p0, Lcom/zhangdan/banka/view/ComJSInterface$8;->this$0:Lcom/zhangdan/banka/view/ComJSInterface;

    iput p2, p0, Lcom/zhangdan/banka/view/ComJSInterface$8;->val$width:I

    iput p3, p0, Lcom/zhangdan/banka/view/ComJSInterface$8;->val$height:I

    iput p4, p0, Lcom/zhangdan/banka/view/ComJSInterface$8;->val$quality:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 393
    iget-object v0, p0, Lcom/zhangdan/banka/view/ComJSInterface$8;->this$0:Lcom/zhangdan/banka/view/ComJSInterface;

    #getter for: Lcom/zhangdan/banka/view/ComJSInterface;->mActivity:Lcom/zhangdan/banka/activities/BankaActivity;
    invoke-static {v0}, Lcom/zhangdan/banka/view/ComJSInterface;->access$200(Lcom/zhangdan/banka/view/ComJSInterface;)Lcom/zhangdan/banka/activities/BankaActivity;

    move-result-object v0

    iget v1, p0, Lcom/zhangdan/banka/view/ComJSInterface$8;->val$width:I

    iget v2, p0, Lcom/zhangdan/banka/view/ComJSInterface$8;->val$height:I

    iget v3, p0, Lcom/zhangdan/banka/view/ComJSInterface$8;->val$quality:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/zhangdan/banka/activities/BankaActivity;->showGetPhotoDiaog(III)V

    .line 394
    return-void
.end method
