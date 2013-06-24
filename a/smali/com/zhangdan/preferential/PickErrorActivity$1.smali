.class Lcom/zhangdan/preferential/PickErrorActivity$1;
.super Ljava/lang/Object;
.source "PickErrorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/preferential/PickErrorActivity;->buildDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/preferential/PickErrorActivity;

.field final synthetic val$typeId:I


# direct methods
.method constructor <init>(Lcom/zhangdan/preferential/PickErrorActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/zhangdan/preferential/PickErrorActivity$1;->this$0:Lcom/zhangdan/preferential/PickErrorActivity;

    iput p2, p0, Lcom/zhangdan/preferential/PickErrorActivity$1;->val$typeId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 64
    new-instance v0, Lcom/zhangdan/preferential/PickErrorActivity$SendErrorTask;

    iget-object v1, p0, Lcom/zhangdan/preferential/PickErrorActivity$1;->this$0:Lcom/zhangdan/preferential/PickErrorActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zhangdan/preferential/PickErrorActivity$SendErrorTask;-><init>(Lcom/zhangdan/preferential/PickErrorActivity;Lcom/zhangdan/preferential/PickErrorActivity$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    iget v3, p0, Lcom/zhangdan/preferential/PickErrorActivity$1;->val$typeId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/PickErrorActivity$SendErrorTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 65
    iget-object v0, p0, Lcom/zhangdan/preferential/PickErrorActivity$1;->this$0:Lcom/zhangdan/preferential/PickErrorActivity;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/PickErrorActivity;->finish()V

    .line 66
    return-void
.end method
