.class Lcom/zhangdan/preferential/BrandWallFragment$GetBrandListTask;
.super Landroid/os/AsyncTask;
.source "BrandWallFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/BrandWallFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetBrandListTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/zhangdan/preferential/data/model/Brand;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/preferential/BrandWallFragment;


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/BrandWallFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/zhangdan/preferential/BrandWallFragment$GetBrandListTask;->this$0:Lcom/zhangdan/preferential/BrandWallFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/BrandWallFragment;Lcom/zhangdan/preferential/BrandWallFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/BrandWallFragment$GetBrandListTask;-><init>(Lcom/zhangdan/preferential/BrandWallFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/BrandWallFragment$GetBrandListTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 2
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/Brand;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v1, p0, Lcom/zhangdan/preferential/BrandWallFragment$GetBrandListTask;->this$0:Lcom/zhangdan/preferential/BrandWallFragment;

    #getter for: Lcom/zhangdan/preferential/BrandWallFragment;->mPositionProvider:Lcom/zhangdan/preferential/utils/PositionProvider;
    invoke-static {v1}, Lcom/zhangdan/preferential/BrandWallFragment;->access$100(Lcom/zhangdan/preferential/BrandWallFragment;)Lcom/zhangdan/preferential/utils/PositionProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhangdan/preferential/utils/PositionProvider;->getPosition()Lcom/zhangdan/preferential/data/model/Position;

    move-result-object v0

    .line 90
    .local v0, pos:Lcom/zhangdan/preferential/data/model/Position;
    if-nez v0, :cond_0

    .line 91
    const/4 v1, 0x0

    .line 94
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/zhangdan/preferential/BrandWallFragment$GetBrandListTask;->this$0:Lcom/zhangdan/preferential/BrandWallFragment;

    #getter for: Lcom/zhangdan/preferential/BrandWallFragment;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;
    invoke-static {v1}, Lcom/zhangdan/preferential/BrandWallFragment;->access$200(Lcom/zhangdan/preferential/BrandWallFragment;)Lcom/zhangdan/preferential/utils/JsonParser;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zhangdan/preferential/utils/JsonParser;->parseBrandList(Lcom/zhangdan/preferential/data/model/Position;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/BrandWallFragment$GetBrandListTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/Brand;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, brands:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Brand;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/data/model/Brand;

    .line 100
    .local v0, b:Lcom/zhangdan/preferential/data/model/Brand;
    iget-object v2, p0, Lcom/zhangdan/preferential/BrandWallFragment$GetBrandListTask;->this$0:Lcom/zhangdan/preferential/BrandWallFragment;

    #calls: Lcom/zhangdan/preferential/BrandWallFragment;->addBrand(Lcom/zhangdan/preferential/data/model/Brand;)V
    invoke-static {v2, v0}, Lcom/zhangdan/preferential/BrandWallFragment;->access$300(Lcom/zhangdan/preferential/BrandWallFragment;Lcom/zhangdan/preferential/data/model/Brand;)V

    goto :goto_0

    .line 102
    .end local v0           #b:Lcom/zhangdan/preferential/data/model/Brand;
    :cond_0
    return-void
.end method
