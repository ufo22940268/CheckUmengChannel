.class final Lcom/zhangdan/preferential/bq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/weibo/sdk/android/net/g;


# instance fields
.field final synthetic a:Lcom/zhangdan/preferential/TestActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/preferential/TestActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/bq;->a:Lcom/zhangdan/preferential/TestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/weibo/sdk/android/l;)V
    .locals 0

    invoke-virtual {p1}, Lcom/weibo/sdk/android/l;->printStackTrace()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "++++++++++++++++++++sina result"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "++++++++++++++++++++"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
