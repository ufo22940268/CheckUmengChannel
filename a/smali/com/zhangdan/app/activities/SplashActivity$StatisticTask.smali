.class Lcom/zhangdan/app/activities/SplashActivity$StatisticTask;
.super Ljava/lang/Thread;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StatisticTask"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/zhangdan/app/activities/SplashActivity;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zhangdan/app/activities/SplashActivity;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "userId"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/zhangdan/app/activities/SplashActivity$StatisticTask;->this$0:Lcom/zhangdan/app/activities/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 135
    iput-object p2, p0, Lcom/zhangdan/app/activities/SplashActivity$StatisticTask;->context:Landroid/content/Context;

    .line 136
    iput-object p3, p0, Lcom/zhangdan/app/activities/SplashActivity$StatisticTask;->userId:Ljava/lang/String;

    .line 137
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 141
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 142
    iget-object v0, p0, Lcom/zhangdan/app/activities/SplashActivity$StatisticTask;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/zhangdan/app/activities/SplashActivity$StatisticTask;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/zhangdan/app/activities/SplashActivity$StatisticTask;->userId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/zhangdan/app/api/StatisticsApi;->uploadCount(Landroid/content/Context;Ljava/lang/String;)V

    .line 144
    :cond_0
    return-void
.end method
