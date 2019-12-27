namespace cpp ignis.rpc.driver
namespace java org.ignis.rpc.driver
namespace py ignis.rpc.driver.dataframe


include "IDriverException.thrift"
include "../ISource.thrift"

struct IDataFrameId{
	1: required i64 cluster;
	2: required i64 worker;
	3: required i64 dataFrame;
}

service IDataFrameService{
	void setName(1: IDataFrameId id, 2: string name) throws (1:IDriverException.IDriverException ex),
	void persist(1: IDataFrameId id, 2: i8 level) throws (1:IDriverException.IDriverException ex),
	void cache(1: IDataFrameId id) throws (1:IDriverException.IDriverException ex),
	void unpersist(1: IDataFrameId id) throws (1:IDriverException.IDriverException ex),
	void uncache(1: IDataFrameId id) throws (1:IDriverException.IDriverException ex),

	/*IO*/
	IDataFrameId repartition(1: IDataFrameId id, 2: i64 numPartitions) throws (1:IDriverException.IDriverException ex),
	IDataFrameId coalesce(1: IDataFrameId id, 2: i64 numPartitions, 3: bool shuffle) throws (1:IDriverException.IDriverException ex),
	i64 partitions(1: IDataFrameId id) throws (1:IDriverException.IDriverException ex),
	void saveAsPartitionObjectFile(1: IDataFrameId id, 2: string path, 3: i8 compression) throws (1:IDriverException.IDriverException ex),
	void saveAsTextFile(1: IDataFrameId id, 2: string path) throws (1:IDriverException.IDriverException ex),
	void saveAsJsonFile(1: IDataFrameId id, 2: string path) throws (1:IDriverException.IDriverException ex),

	/*General*/
	IDataFrameId map_(1: IDataFrameId id, 2: ISource.ISource src) throws (1:IDriverException.IDriverException ex),
	IDataFrameId filter(1: IDataFrameId id, 2: ISource.ISource src) throws (1:IDriverException.IDriverException ex),
	IDataFrameId flatmap(1: IDataFrameId id, 2: ISource.ISource src) throws (1:IDriverException.IDriverException ex),
	IDataFrameId mapPartitions(1: IDataFrameId id, 2: ISource.ISource src, 3:  bool preservesPartitioning) throws (1:IDriverException.IDriverException ex),
	IDataFrameId mapPartitionsWithIndex(1: IDataFrameId id, 2: ISource.ISource src, 3:  bool preservesPartitioning) throws (1:IDriverException.IDriverException ex),
	IDataFrameId applyPartition(1: IDataFrameId id, 2: ISource.ISource src) throws (1:IDriverException.IDriverException ex),
	IDataFrameId groupBy(1: IDataFrameId id, 2: ISource.ISource src) throws (1:IDriverException.IDriverException ex),
	IDataFrameId groupBy2(1: IDataFrameId id, 2: ISource.ISource src, 3: i64 numPartitions) throws (1:IDriverException.IDriverException ex),
	IDataFrameId sort(1: IDataFrameId id, 2: bool ascending) throws (1:IDriverException.IDriverException ex),
	IDataFrameId sort2(1: IDataFrameId id, 2: bool ascending, 3:  i64 numPartitions) throws (1:IDriverException.IDriverException ex),
	IDataFrameId sortBy(1: IDataFrameId id, 2: ISource.ISource src, 3:  bool ascending) throws (1:IDriverException.IDriverException ex),
	IDataFrameId sortBy3(1: IDataFrameId id, 2: ISource.ISource src, 3:  bool ascending, 4: i64 numPartitions) throws (1:IDriverException.IDriverException ex),

	/*General Action*/
	i64 reduce(1: IDataFrameId id, 2: ISource.ISource src) throws (1:IDriverException.IDriverException ex),
	i64 treeReduce(1: IDataFrameId id, 2: ISource.ISource src, 3: i64 depth) throws (1:IDriverException.IDriverException ex),
	i64 collect(1: IDataFrameId id) throws (1:IDriverException.IDriverException ex),
	i64 aggregate(1: IDataFrameId id, 2: ISource.ISource seqOp, 3: ISource.ISource combOp) throws (1:IDriverException.IDriverException ex),
	i64 treeAggregate(1: IDataFrameId id, 2: ISource.ISource seqOp, 3: ISource.ISource combOp) throws (1:IDriverException.IDriverException ex),
	i64 treeAggregate3(1: IDataFrameId id, 2: ISource.ISource seqOp, 3: ISource.ISource combOp, 4: i64 depth) throws (1:IDriverException.IDriverException ex),
	i64 fold(1: IDataFrameId id, 2: ISource.ISource src) throws (1:IDriverException.IDriverException ex),
	i64 take(1: IDataFrameId id, 2: i64 num) throws (1:IDriverException.IDriverException ex),
	void foreach_(1: IDataFrameId id, 2: ISource.ISource src) throws (1:IDriverException.IDriverException ex),
	void foreachPartition(1: IDataFrameId id, 2: ISource.ISource src) throws (1:IDriverException.IDriverException ex),
	i64 top(1: IDataFrameId id, 2: i64 num) throws (1:IDriverException.IDriverException ex),
	i64 top2(1: IDataFrameId id, 2: i64 num, 3: ISource.ISource cmp) throws (1:IDriverException.IDriverException ex),

	/*Math*/
	IDataFrameId sample(1: IDataFrameId id, 2: bool withReplacement, 3: double fraction, 4: i32 seed) throws (1:IDriverException.IDriverException ex),
	i64 takeSample(1: IDataFrameId id, 2: bool withReplacement, 3: i64 num, 4: i32 seed) throws (1:IDriverException.IDriverException ex),
	i64 count(1: IDataFrameId id) throws (1:IDriverException.IDriverException ex),
	i64 max(1: IDataFrameId id, 2: ISource.ISource cmp) throws (1:IDriverException.IDriverException ex),
	i64 min(1: IDataFrameId id, 2: ISource.ISource cmp) throws (1:IDriverException.IDriverException ex);
}