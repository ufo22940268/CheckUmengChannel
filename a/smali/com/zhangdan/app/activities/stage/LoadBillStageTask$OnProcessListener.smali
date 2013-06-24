.class public interface abstract Lcom/zhangdan/app/activities/stage/LoadBillStageTask$OnProcessListener;
.super Ljava/lang/Object;
.source "LoadBillStageTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/stage/LoadBillStageTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnProcessListener"
.end annotation


# virtual methods
.method public abstract onPostExecute(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/BillStageInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onPreExecute()V
.end method
