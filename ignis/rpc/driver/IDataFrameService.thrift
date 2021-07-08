namespace cpp ignis.rpc.driver
namespace java org.ignis.rpc.driver
namespace py ignis.rpc.driver.dataframe
namespace go ignis.rpc.driver


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
	void saveAsObjectFile(1: IDataFrameId id, 2: string path, 3: i8 compression) throws (1:IDriverException.IDriverException ex),
	void saveAsTextFile(1: IDataFrameId id, 2: string path) throws (1:IDriverException.IDriverException ex),
	void saveAsJsonFile(1: IDataFrameId id, 2: string path, 3: bool pretty) throws (1:IDriverException.IDriverException ex),

	/*General*/
	IDataFrameId map_(1: IDataFrameId id, 2: ISource.ISource src) throws (1:IDriverException.IDriverException ex),
	IDataFrameId filter(1: IDataFrameId id, 2: ISource.ISource src) throws (1:IDriverException.IDriverException ex),
	IDataFrameId flatmap(1: IDataFrameId id, 2: ISource.ISource src) throws (1:IDriverException.IDriverException ex),
	IDataFrameId keyBy(1: IDataFrameId id, 2: ISource.ISource src) throws (1:IDriverException.IDriverException ex),
	IDataFrameId mapPartitions(1: IDataFrameId id, 2: ISource.ISource src, 3:  bool preservesPartitioning) throws (1:IDriverException.IDriverException ex),
	IDataFrameId mapPartitionsWithIndex(1: IDataFrameId id, 2: ISource.ISource src, 3:  bool preservesPartitioning) throws (1:IDriverException.IDriverException ex),
	IDataFrameId mapExecutor(1: IDataFrameId id, 2: ISource.ISource src) throws (1:IDriverException.IDriverException ex),
	IDataFrameId mapExecutorTo(1: IDataFrameId id, 2: ISource.ISource src) throws (1:IDriverException.IDriverException ex),
	IDataFrameId groupBy(1: IDataFrameId id, 2: ISource.ISource src) throws (1:IDriverException.IDriverException ex),
	IDataFrameId groupBy2(1: IDataFrameId id, 2: ISource.ISource src, 3: i64 numPartitions) throws (1:IDriverException.IDriverException ex),
	IDataFrameId sort(1: IDataFrameId id, 2: bool ascending) throws (1:IDriverException.IDriverException ex),
	IDataFrameId sort2(1: IDataFrameId id, 2: bool ascending, 3:  i64 numPartitions) throws (1:IDriverException.IDriverException ex),
	IDataFrameId sortBy(1: IDataFrameId id, 2: ISource.ISource src, 3:  bool ascending) throws (1:IDriverException.IDriverException ex),
	IDataFrameId sortBy3(1: IDataFrameId id, 2: ISource.ISource src, 3:  bool ascending, 4: i64 numPartitions) throws (1:IDriverException.IDriverException ex),
	IDataFrameId union_(1: IDataFrameId id, 2: IDataFrameId other, 3: bool preserveOrder) throws (1:IDriverException.IDriverException ex),
	IDataFrameId union4a(1: IDataFrameId id, 2: IDataFrameId other, 3: bool preserveOrder, 4: i64 numPartitions) throws (1:IDriverException.IDriverException ex),
	IDataFrameId union4b(1: IDataFrameId id, 2: IDataFrameId other, 3: bool preserveOrder, 4: ISource.ISource src) throws (1:IDriverException.IDriverException ex),
	IDataFrameId union5(1: IDataFrameId id, 2: IDataFrameId other, 3: bool preserveOrder, 4: i64 numPartitions, 5: ISource.ISource src) throws (1:IDriverException.IDriverException ex),
	IDataFrameId join(1: IDataFrameId id, 2: IDataFrameId other) throws (1:IDriverException.IDriverException ex),
	IDataFrameId join3a(1: IDataFrameId id, 2: IDataFrameId other, 3: i64 numPartitions) throws (1:IDriverException.IDriverException ex),
	IDataFrameId join3b(1: IDataFrameId id, 2: IDataFrameId other, 3: ISource.ISource src),
	IDataFrameId join4(1: IDataFrameId id, 2: IDataFrameId other, 3: i64 numPartitions, 4: ISource.ISource src) throws (1:IDriverException.IDriverException ex),
	IDataFrameId distinct(1: IDataFrameId id) throws (1:IDriverException.IDriverException ex),
	IDataFrameId distinct2a(1: IDataFrameId id, 2: i64 numPartitions) throws (1:IDriverException.IDriverException ex),
	IDataFrameId distinct2b(1: IDataFrameId id, 2: ISource.ISource src) throws (1:IDriverException.IDriverException ex),
	IDataFrameId distinct3(1: IDataFrameId id, 2: i64 numPartitions, 3: ISource.ISource src) throws (1:IDriverException.IDriverException ex),

	/*General Action*/
	i64 reduce(1: IDataFrameId id, 2: ISource.ISource src, 3: ISource.ISource tp) throws (1:IDriverException.IDriverException ex),
	i64 treeReduce(1: IDataFrameId id, 2: ISource.ISource src, 3: ISource.ISource tp) throws (1:IDriverException.IDriverException ex),
	i64 collect(1: IDataFrameId id, 2: ISource.ISource tp) throws (1:IDriverException.IDriverException ex),
	i64 aggregate(1: IDataFrameId id, 2: ISource.ISource zero, 3: ISource.ISource seqOp, 4: ISource.ISource combOp, 5: ISource.ISource tp) throws (1:IDriverException.IDriverException ex),
	i64 treeAggregate(1: IDataFrameId id, 2: ISource.ISource zero, 3: ISource.ISource seqOp, 4: ISource.ISource combOp, 5: ISource.ISource tp) throws (1:IDriverException.IDriverException ex),
	i64 fold(1: IDataFrameId id, 2: ISource.ISource zero, 3: ISource.ISource src, 4: ISource.ISource tp) throws (1:IDriverException.IDriverException ex),
	i64 treeFold(1: IDataFrameId id, 2: ISource.ISource zero, 3: ISource.ISource src, 4: ISource.ISource tp) throws (1:IDriverException.IDriverException ex),
	i64 take(1: IDataFrameId id, 2: i64 num, 3: ISource.ISource tp) throws (1:IDriverException.IDriverException ex),
	void foreach_(1: IDataFrameId id, 2: ISource.ISource src) throws (1:IDriverException.IDriverException ex),
	void foreachPartition(1: IDataFrameId id, 2: ISource.ISource src) throws (1:IDriverException.IDriverException ex),
	void foreachExecutor(1: IDataFrameId id, 2: ISource.ISource src) throws (1:IDriverException.IDriverException ex),
	i64 top(1: IDataFrameId id, 2: i64 num, 3: ISource.ISource tp) throws (1:IDriverException.IDriverException ex),
	i64 top4(1: IDataFrameId id, 2: i64 num, 3: ISource.ISource cmp, 4: ISource.ISource tp) throws (1:IDriverException.IDriverException ex),
	i64 takeOrdered(1: IDataFrameId id, 2: i64 num, 3: ISource.ISource tp) throws (1:IDriverException.IDriverException ex),
	i64 takeOrdered4(1: IDataFrameId id, 2: i64 num, 3: ISource.ISource cmp, 4: ISource.ISource tp) throws (1:IDriverException.IDriverException ex),

	/*Math*/
	IDataFrameId sample(1: IDataFrameId id, 2: bool withReplacement, 3: double fraction, 4: i32 seed) throws (1:IDriverException.IDriverException ex),
	i64 takeSample(1: IDataFrameId id, 2: bool withReplacement, 3: i64 num, 4: i32 seed, 5: ISource.ISource tp) throws (1:IDriverException.IDriverException ex),
	i64 count(1: IDataFrameId id) throws (1:IDriverException.IDriverException ex),
	i64 max(1: IDataFrameId id, 2: ISource.ISource tp) throws (1:IDriverException.IDriverException ex),
	i64 max3(1: IDataFrameId id, 2: ISource.ISource cmp, 3: ISource.ISource tp) throws (1:IDriverException.IDriverException ex),
	i64 min(1: IDataFrameId id, 2: ISource.ISource tp) throws (1:IDriverException.IDriverException ex),
	i64 min3(1: IDataFrameId id, 2: ISource.ISource cmp, 3: ISource.ISource tp) throws (1:IDriverException.IDriverException ex),

	/*******************************************Key-Value*******************************************/
	/*General*/
	IDataFrameId flatMapValues(1: IDataFrameId id, 2: ISource.ISource src) throws (1:IDriverException.IDriverException ex),
	IDataFrameId mapValues(1: IDataFrameId id, 2: ISource.ISource src) throws (1:IDriverException.IDriverException ex),
	IDataFrameId groupByKey(1: IDataFrameId id) throws (1:IDriverException.IDriverException ex),
	IDataFrameId groupByKey2a(1: IDataFrameId id, 2: i64 numPartitions) throws (1:IDriverException.IDriverException ex),
	IDataFrameId groupByKey2b(1: IDataFrameId id, 2: ISource.ISource src) throws (1:IDriverException.IDriverException ex),
	IDataFrameId groupByKey3(1: IDataFrameId id, 2: i64 numPartitions, 3: ISource.ISource src) throws (1:IDriverException.IDriverException ex),
	IDataFrameId reduceByKey(1: IDataFrameId id, 2: ISource.ISource src, 3: bool localReduce) throws (1:IDriverException.IDriverException ex),
	IDataFrameId reduceByKey4(1: IDataFrameId id, 2: ISource.ISource src, 3: i64 numPartitions, 4: bool localReduce) throws (1:IDriverException.IDriverException ex),
	IDataFrameId aggregateByKey(1: IDataFrameId id, 2: ISource.ISource zero, 3: ISource.ISource seqOp) throws (1:IDriverException.IDriverException ex),
	IDataFrameId aggregateByKey4a(1: IDataFrameId id, 2: ISource.ISource zero, 3: ISource.ISource seqOp, 4: i64 numPartitions) throws (1:IDriverException.IDriverException ex),
	IDataFrameId aggregateByKey4b(1: IDataFrameId id, 2: ISource.ISource zero, 3: ISource.ISource seqOp, 4: ISource.ISource combOp) throws (1:IDriverException.IDriverException ex),
	IDataFrameId aggregateByKey5(1: IDataFrameId id, 2: ISource.ISource zero, 3: ISource.ISource seqOp, 4: ISource.ISource combOp, 5: i64 numPartitions) throws (1:IDriverException.IDriverException ex),
	IDataFrameId foldByKey(1: IDataFrameId id, 2: ISource.ISource zero, 3: ISource.ISource src, 4: bool localFold) throws (1:IDriverException.IDriverException ex),
	IDataFrameId foldByKey5(1: IDataFrameId id, 2: ISource.ISource zero, 3: ISource.ISource src, 4: i64 numPartitions, 5: bool localFold) throws (1:IDriverException.IDriverException ex),
	IDataFrameId sortByKey(1: IDataFrameId id, 2: bool ascending) throws (1:IDriverException.IDriverException ex),
	IDataFrameId sortByKey3a(1: IDataFrameId id, 2: bool ascending, 3:  i64 numPartitions) throws (1:IDriverException.IDriverException ex),
	IDataFrameId sortByKey3b(1: IDataFrameId id, 2: ISource.ISource src, 3:  bool ascending) throws (1:IDriverException.IDriverException ex),
	IDataFrameId sortByKey4(1: IDataFrameId id, 2: ISource.ISource src, 3:  bool ascending, 4: i64 numPartitions) throws (1:IDriverException.IDriverException ex),

	/*General Action*/
	i64 keys(1: IDataFrameId id, 2: ISource.ISource tp) throws (1:IDriverException.IDriverException ex),
	i64 values(1: IDataFrameId id, 2: ISource.ISource tp) throws (1:IDriverException.IDriverException ex),

	/*Math*/
	IDataFrameId sampleByKey(1: IDataFrameId id, 2: bool withReplacement, 3: ISource.ISource fractions, 4: i32 seed) throws (1:IDriverException.IDriverException ex),
	i64 countByKey(1: IDataFrameId id, 2: ISource.ISource tp) throws (1:IDriverException.IDriverException ex),
	i64 countByValue(1: IDataFrameId id, 2: ISource.ISource tp) throws (1:IDriverException.IDriverException ex);
}