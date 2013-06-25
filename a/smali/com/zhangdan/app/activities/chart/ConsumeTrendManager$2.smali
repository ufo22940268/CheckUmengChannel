.class Lcom/zhangdan/app/activities/chart/ConsumeTrendManager$2;
.super Ljava/lang/Object;
.source "ConsumeTrendManager.java"

# interfaces
.implements Lcom/zhangdan/app/activities/chart/NameListDialogFragment$OnCardNameSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager$2;->this$0:Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCardNameSelected(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager$2;->this$0:Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;

    const/4 v1, 0x0

    #setter for: Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mCurrUserName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->access$302(Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;Ljava/lang/String;)Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager$2;->this$0:Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;

    #calls: Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->displayConsumptionTrendByName(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->access$400(Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;Ljava/lang/String;)V

    .line 150
    return-void
.end method
