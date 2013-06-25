.class Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager$2;
.super Ljava/lang/Object;
.source "ConsumeCategoryManager.java"

# interfaces
.implements Lcom/zhangdan/app/activities/chart/NameListDialogFragment$OnCardNameSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager$2;->this$0:Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCardNameSelected(Ljava/lang/String;)V
    .locals 4
    .parameter "name"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager$2;->this$0:Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;

    #setter for: Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mUserName:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->access$502(Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager$2;->this$0:Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;

    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager$2;->this$0:Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;

    #getter for: Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mUserName:Ljava/lang/String;
    invoke-static {v1}, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->access$500(Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager$2;->this$0:Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;

    #getter for: Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mYear:I
    invoke-static {v2}, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->access$600(Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;)I

    move-result v2

    iget-object v3, p0, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager$2;->this$0:Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;

    #getter for: Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->mMonth:I
    invoke-static {v3}, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->access$700(Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;)I

    move-result v3

    #calls: Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->displayConsumeCategory(Ljava/lang/String;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->access$800(Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;Ljava/lang/String;II)V

    .line 160
    return-void
.end method
