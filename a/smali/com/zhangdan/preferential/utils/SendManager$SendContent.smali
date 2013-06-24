.class Lcom/zhangdan/preferential/utils/SendManager$SendContent;
.super Ljava/lang/Object;
.source "SendManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/utils/SendManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SendContent"
.end annotation


# instance fields
.field imageFilePath:Ljava/lang/String;

.field private smsContent:Ljava/lang/String;

.field final synthetic this$0:Lcom/zhangdan/preferential/utils/SendManager;

.field private wxRequest:Lcom/zhangdan/preferential/data/model/WeixinRequest;


# direct methods
.method constructor <init>(Lcom/zhangdan/preferential/utils/SendManager;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/zhangdan/preferential/utils/SendManager$SendContent;->this$0:Lcom/zhangdan/preferential/utils/SendManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/preferential/utils/SendManager$SendContent;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/zhangdan/preferential/utils/SendManager$SendContent;->smsContent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/zhangdan/preferential/utils/SendManager$SendContent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/zhangdan/preferential/utils/SendManager$SendContent;->smsContent:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/zhangdan/preferential/utils/SendManager$SendContent;)Lcom/zhangdan/preferential/data/model/WeixinRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/zhangdan/preferential/utils/SendManager$SendContent;->wxRequest:Lcom/zhangdan/preferential/data/model/WeixinRequest;

    return-object v0
.end method

.method static synthetic access$102(Lcom/zhangdan/preferential/utils/SendManager$SendContent;Lcom/zhangdan/preferential/data/model/WeixinRequest;)Lcom/zhangdan/preferential/data/model/WeixinRequest;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/zhangdan/preferential/utils/SendManager$SendContent;->wxRequest:Lcom/zhangdan/preferential/data/model/WeixinRequest;

    return-object p1
.end method
