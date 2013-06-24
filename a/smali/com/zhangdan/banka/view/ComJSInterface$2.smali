.class Lcom/zhangdan/banka/view/ComJSInterface$2;
.super Ljava/lang/Object;
.source "ComJSInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/banka/view/ComJSInterface;->callNativeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/banka/view/ComJSInterface;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$scope:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zhangdan/banka/view/ComJSInterface;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/zhangdan/banka/view/ComJSInterface$2;->this$0:Lcom/zhangdan/banka/view/ComJSInterface;

    iput-object p2, p0, Lcom/zhangdan/banka/view/ComJSInterface$2;->val$appId:Ljava/lang/String;

    iput-object p3, p0, Lcom/zhangdan/banka/view/ComJSInterface$2;->val$scope:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/zhangdan/banka/view/ComJSInterface$2;->this$0:Lcom/zhangdan/banka/view/ComJSInterface;

    iget-object v1, p0, Lcom/zhangdan/banka/view/ComJSInterface$2;->val$appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/zhangdan/banka/view/ComJSInterface$2;->val$scope:Ljava/lang/String;

    #calls: Lcom/zhangdan/banka/view/ComJSInterface;->doQQLogin(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/zhangdan/banka/view/ComJSInterface;->access$000(Lcom/zhangdan/banka/view/ComJSInterface;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method
