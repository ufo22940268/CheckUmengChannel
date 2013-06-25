.class Lcom/zhangdan/banka/view/ComJSInterface$6;
.super Ljava/lang/Object;
.source "ComJSInterface.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$callbackId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zhangdan/banka/view/ComJSInterface;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/zhangdan/banka/view/ComJSInterface$6;->this$0:Lcom/zhangdan/banka/view/ComJSInterface;

    iput-object p2, p0, Lcom/zhangdan/banka/view/ComJSInterface$6;->val$callbackId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 272
    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, "index"

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4}, Lcom/zhangdan/banka/utils/RespJsonUtil;->constructRespWithInteger(ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, str:Ljava/lang/String;
    iget-object v1, p0, Lcom/zhangdan/banka/view/ComJSInterface$6;->this$0:Lcom/zhangdan/banka/view/ComJSInterface;

    iget-object v2, p0, Lcom/zhangdan/banka/view/ComJSInterface$6;->val$callbackId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/zhangdan/banka/view/ComJSInterface;->callbackJsMethod(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    return-void
.end method
