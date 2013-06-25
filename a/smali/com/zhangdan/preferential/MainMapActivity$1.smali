.class Lcom/zhangdan/preferential/MainMapActivity$1;
.super Ljava/lang/Object;
.source "MainMapActivity.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/MainMapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/preferential/MainMapActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/preferential/MainMapActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/zhangdan/preferential/MainMapActivity$1;->this$0:Lcom/zhangdan/preferential/MainMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 3

    .prologue
    .line 228
    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity$1;->this$0:Lcom/zhangdan/preferential/MainMapActivity;

    const/16 v1, 0xb4

    const/4 v2, 0x0

    #calls: Lcom/zhangdan/preferential/MainMapActivity;->rotateArrow(II)V
    invoke-static {v0, v1, v2}, Lcom/zhangdan/preferential/MainMapActivity;->access$100(Lcom/zhangdan/preferential/MainMapActivity;II)V

    .line 229
    return-void
.end method
