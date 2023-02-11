# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `rubocop-performance` gem.
# Please instead update this file by running `bin/tapioca gem rubocop-performance`.

module RuboCop; end
module RuboCop::Cop; end
RuboCop::Cop::IgnoredMethods = RuboCop::Cop::AllowedMethods
RuboCop::Cop::IgnoredPattern = RuboCop::Cop::AllowedPattern
module RuboCop::Cop::Performance; end

class RuboCop::Cop::Performance::AncestorsInclude < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::RangeHelp
  extend ::RuboCop::Cop::AutoCorrector

  def ancestors_include_candidate?(param0 = T.unsafe(nil)); end
  def on_send(node); end

  private

  def range(node); end
end

RuboCop::Cop::Performance::AncestorsInclude::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Performance::AncestorsInclude::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Performance::ArraySemiInfiniteRangeSlice < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::RangeHelp
  extend ::RuboCop::Cop::AutoCorrector
  extend ::RuboCop::Cop::TargetRubyVersion

  def endless_range?(param0 = T.unsafe(nil)); end
  def endless_range_slice?(param0 = T.unsafe(nil)); end
  def on_send(node); end

  private

  def correction(receiver, range_node); end
end

RuboCop::Cop::Performance::ArraySemiInfiniteRangeSlice::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Performance::ArraySemiInfiniteRangeSlice::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Set)
RuboCop::Cop::Performance::ArraySemiInfiniteRangeSlice::SLICE_METHODS = T.let(T.unsafe(nil), Set)

class RuboCop::Cop::Performance::BigDecimalWithNumericArgument < ::RuboCop::Cop::Base
  extend ::RuboCop::Cop::AutoCorrector

  def big_decimal_with_numeric_argument?(param0 = T.unsafe(nil)); end
  def on_send(node); end
  def to_d?(param0 = T.unsafe(nil)); end
end

RuboCop::Cop::Performance::BigDecimalWithNumericArgument::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Performance::BigDecimalWithNumericArgument::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Performance::BindCall < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::RangeHelp
  extend ::RuboCop::Cop::AutoCorrector
  extend ::RuboCop::Cop::TargetRubyVersion

  def bind_with_call_method?(param0 = T.unsafe(nil)); end
  def on_send(node); end

  private

  def build_call_args(call_args_node); end
  def correction_range(receiver, node); end
  def message(bind_arg, call_args); end
end

RuboCop::Cop::Performance::BindCall::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Performance::BindCall::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Performance::BlockGivenWithExplicitBlock < ::RuboCop::Cop::Base
  extend ::RuboCop::Cop::AutoCorrector

  def on_send(node); end
  def reassigns_block_arg?(param0 = T.unsafe(nil), param1); end
end

RuboCop::Cop::Performance::BlockGivenWithExplicitBlock::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Performance::BlockGivenWithExplicitBlock::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Performance::Caller < ::RuboCop::Cop::Base
  extend ::RuboCop::Cop::AutoCorrector

  def caller_with_scope_method?(param0 = T.unsafe(nil)); end
  def on_send(node); end
  def slow_caller?(param0 = T.unsafe(nil)); end

  private

  def int_value(node); end
end

RuboCop::Cop::Performance::Caller::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Performance::Caller::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Performance::CaseWhenSplat < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::Alignment
  include ::RuboCop::Cop::RangeHelp
  extend ::RuboCop::Cop::AutoCorrector

  def on_case(case_node); end

  private

  def autocorrect(corrector, when_node); end
  def indent_for(node); end
  def inline_fix_branch(corrector, when_node); end
  def needs_reorder?(when_node); end
  def new_branch_without_then(node, new_condition); end
  def new_condition_with_then(node, new_condition); end
  def non_splat?(condition); end
  def range(node); end
  def reorder_condition(corrector, when_node); end
  def reordering_correction(when_node); end
  def replacement(conditions); end
  def splat_offenses(when_conditions); end
  def when_branch_range(when_node); end
end

RuboCop::Cop::Performance::CaseWhenSplat::ARRAY_MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Performance::CaseWhenSplat::MSG = T.let(T.unsafe(nil), String)

class RuboCop::Cop::Performance::Casecmp < ::RuboCop::Cop::Base
  extend ::RuboCop::Cop::AutoCorrector

  def downcase_downcase(param0 = T.unsafe(nil)); end
  def downcase_eq(param0 = T.unsafe(nil)); end
  def eq_downcase(param0 = T.unsafe(nil)); end
  def on_send(node); end

  private

  def autocorrect(corrector, node, replacement); end
  def build_good_method(method, arg, variable); end
  def take_method_apart(node); end
end

RuboCop::Cop::Performance::Casecmp::CASE_METHODS = T.let(T.unsafe(nil), Array)
RuboCop::Cop::Performance::Casecmp::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Performance::Casecmp::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Performance::ChainArrayAllocation < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::RangeHelp

  def chain_array_allocation?(param0 = T.unsafe(nil)); end
  def on_send(node); end
end

RuboCop::Cop::Performance::ChainArrayAllocation::ALWAYS_RETURNS_NEW_ARRAY = T.let(T.unsafe(nil), Set)
RuboCop::Cop::Performance::ChainArrayAllocation::HAS_MUTATION_ALTERNATIVE = T.let(T.unsafe(nil), Set)
RuboCop::Cop::Performance::ChainArrayAllocation::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Performance::ChainArrayAllocation::RETURNS_NEW_ARRAY = T.let(T.unsafe(nil), Set)
RuboCop::Cop::Performance::ChainArrayAllocation::RETURNS_NEW_ARRAY_WHEN_NO_BLOCK = T.let(T.unsafe(nil), Set)
RuboCop::Cop::Performance::ChainArrayAllocation::RETURN_NEW_ARRAY_WHEN_ARGS = T.let(T.unsafe(nil), Set)

class RuboCop::Cop::Performance::CollectionLiteralInLoop < ::RuboCop::Cop::Base
  def enumerable_loop?(param0 = T.unsafe(nil)); end
  def kernel_loop?(param0 = T.unsafe(nil)); end
  def on_send(node); end

  private

  def check_literal?(node, method); end
  def enumerable_method?(method_name); end
  def keyword_loop?(type); end
  def literal_class(node); end
  def loop?(ancestor, node); end
  def min_size; end
  def node_within_enumerable_loop?(node, ancestor); end
  def nonmutable_method_of_array_or_hash?(node, method); end
  def parent_is_loop?(node); end
end

RuboCop::Cop::Performance::CollectionLiteralInLoop::ARRAY_METHODS = T.let(T.unsafe(nil), Set)
RuboCop::Cop::Performance::CollectionLiteralInLoop::ENUMERABLE_METHOD_NAMES = T.let(T.unsafe(nil), Set)
RuboCop::Cop::Performance::CollectionLiteralInLoop::HASH_METHODS = T.let(T.unsafe(nil), Set)
RuboCop::Cop::Performance::CollectionLiteralInLoop::LOOP_TYPES = T.let(T.unsafe(nil), Array)
RuboCop::Cop::Performance::CollectionLiteralInLoop::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Performance::CollectionLiteralInLoop::NONMUTATING_ARRAY_METHODS = T.let(T.unsafe(nil), Array)
RuboCop::Cop::Performance::CollectionLiteralInLoop::NONMUTATING_HASH_METHODS = T.let(T.unsafe(nil), Array)
RuboCop::Cop::Performance::CollectionLiteralInLoop::POST_CONDITION_LOOP_TYPES = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Performance::CompareWithBlock < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::RangeHelp
  extend ::RuboCop::Cop::AutoCorrector

  def compare?(param0 = T.unsafe(nil)); end
  def on_block(node); end
  def replaceable_body?(param0 = T.unsafe(nil), param1, param2); end

  private

  def compare_range(send, node); end
  def message(send, method, var_a, var_b, args); end
  def slow_compare?(method, args_a, args_b); end
end

RuboCop::Cop::Performance::CompareWithBlock::MSG = T.let(T.unsafe(nil), String)

class RuboCop::Cop::Performance::ConcurrentMonotonicTime < ::RuboCop::Cop::Base
  extend ::RuboCop::Cop::AutoCorrector

  def concurrent_monotonic_time?(param0 = T.unsafe(nil)); end
  def on_send(node); end
end

RuboCop::Cop::Performance::ConcurrentMonotonicTime::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Performance::ConcurrentMonotonicTime::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Performance::ConstantRegexp < ::RuboCop::Cop::Base
  extend ::RuboCop::Cop::AutoCorrector

  def on_regexp(node); end
  def regexp_escape?(param0 = T.unsafe(nil)); end

  private

  def include_interpolated_const?(node); end
  def within_allowed_assignment?(node); end
end

RuboCop::Cop::Performance::ConstantRegexp::MSG = T.let(T.unsafe(nil), String)

class RuboCop::Cop::Performance::Count < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::RangeHelp
  extend ::RuboCop::Cop::AutoCorrector

  def count_candidate?(param0 = T.unsafe(nil)); end
  def on_send(node); end

  private

  def autocorrect(corrector, node, selector_node, selector); end
  def eligible_node?(node); end
  def negate_block_pass_as_inline_block(node); end
  def negate_block_pass_reject(corrector, node); end
  def negate_block_reject(corrector, node); end
  def negate_expression(node); end
  def negate_reject(corrector, node); end
  def source_starting_at(node); end
end

RuboCop::Cop::Performance::Count::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Performance::Count::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Performance::DeletePrefix < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::RegexpMetacharacter
  extend ::RuboCop::Cop::AutoCorrector
  extend ::RuboCop::Cop::TargetRubyVersion

  def delete_prefix_candidate?(param0 = T.unsafe(nil)); end
  def on_send(node); end
end

RuboCop::Cop::Performance::DeletePrefix::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Performance::DeletePrefix::PREFERRED_METHODS = T.let(T.unsafe(nil), Hash)
RuboCop::Cop::Performance::DeletePrefix::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Performance::DeleteSuffix < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::RegexpMetacharacter
  extend ::RuboCop::Cop::AutoCorrector
  extend ::RuboCop::Cop::TargetRubyVersion

  def delete_suffix_candidate?(param0 = T.unsafe(nil)); end
  def on_send(node); end
end

RuboCop::Cop::Performance::DeleteSuffix::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Performance::DeleteSuffix::PREFERRED_METHODS = T.let(T.unsafe(nil), Hash)
RuboCop::Cop::Performance::DeleteSuffix::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Performance::Detect < ::RuboCop::Cop::Base
  extend ::RuboCop::Cop::AutoCorrector

  def detect_candidate?(param0 = T.unsafe(nil)); end
  def on_send(node); end

  private

  def accept_first_call?(receiver, body); end
  def autocorrect(corrector, node, replacement); end
  def lazy?(node); end
  def message_for_method(method, index); end
  def preferred_method; end
  def register_offense(node, receiver, second_method, index); end
  def replacement(method, index); end
end

RuboCop::Cop::Performance::Detect::CANDIDATE_METHODS = T.let(T.unsafe(nil), Set)
RuboCop::Cop::Performance::Detect::INDEX_MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Performance::Detect::INDEX_REVERSE_MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Performance::Detect::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Performance::Detect::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)
RuboCop::Cop::Performance::Detect::REVERSE_MSG = T.let(T.unsafe(nil), String)

class RuboCop::Cop::Performance::DoubleStartEndWith < ::RuboCop::Cop::Base
  extend ::RuboCop::Cop::AutoCorrector

  def check_with_active_support_aliases(param0 = T.unsafe(nil)); end
  def on_or(node); end
  def two_start_end_with_calls(param0 = T.unsafe(nil)); end

  private

  def autocorrect(corrector, first_call_args, second_call_args, combined_args); end
  def check_for_active_support_aliases?; end
  def combine_args(first_call_args, second_call_args); end
  def message(node, receiver, method, combined_args); end
  def process_source(node); end
end

RuboCop::Cop::Performance::DoubleStartEndWith::MSG = T.let(T.unsafe(nil), String)

class RuboCop::Cop::Performance::EndWith < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::RegexpMetacharacter
  extend ::RuboCop::Cop::AutoCorrector

  def on_match_with_lvasgn(node); end
  def on_send(node); end
  def redundant_regex?(param0 = T.unsafe(nil)); end
end

RuboCop::Cop::Performance::EndWith::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Performance::EndWith::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Performance::FixedSize < ::RuboCop::Cop::Base
  def counter(param0 = T.unsafe(nil)); end
  def on_send(node); end

  private

  def allowed_argument?(arg); end
  def allowed_parent?(node); end
  def allowed_variable?(var); end
  def contains_double_splat?(node); end
  def contains_splat?(node); end
  def non_string_argument?(node); end
end

RuboCop::Cop::Performance::FixedSize::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Performance::FixedSize::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Performance::FlatMap < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::RangeHelp
  extend ::RuboCop::Cop::AutoCorrector

  def flat_map_candidate?(param0 = T.unsafe(nil)); end
  def on_send(node); end

  private

  def autocorrect(corrector, node); end
  def offense_for_levels(node, map_node, first_method, flatten); end
  def offense_for_method(node, map_node, first_method, flatten); end
  def register_offense(node, map_node, first_method, flatten, message); end
end

RuboCop::Cop::Performance::FlatMap::FLATTEN_MULTIPLE_LEVELS = T.let(T.unsafe(nil), String)
RuboCop::Cop::Performance::FlatMap::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Performance::FlatMap::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Performance::InefficientHashSearch < ::RuboCop::Cop::Base
  extend ::RuboCop::Cop::AutoCorrector

  def inefficient_include?(param0 = T.unsafe(nil)); end
  def on_send(node); end

  private

  def autocorrect_argument(node); end
  def autocorrect_hash_expression(node); end
  def autocorrect_method(node); end
  def current_method(node); end
  def message(node); end
  def use_long_method; end
end

RuboCop::Cop::Performance::InefficientHashSearch::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Performance::IoReadlines < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::RangeHelp
  extend ::RuboCop::Cop::AutoCorrector

  def on_send(node); end
  def readlines_on_class?(param0 = T.unsafe(nil)); end
  def readlines_on_instance?(param0 = T.unsafe(nil)); end

  private

  def autocorrect(corrector, enumerable_call, readlines_call, receiver); end
  def build_bad_method(enumerable_call); end
  def build_call_args(call_args_node); end
  def build_good_method(enumerable_call); end
  def correction_range(enumerable_call, readlines_call); end
  def offense_range(enumerable_call, readlines_call); end
end

RuboCop::Cop::Performance::IoReadlines::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Performance::IoReadlines::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Performance::MapCompact < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::RangeHelp
  extend ::RuboCop::Cop::AutoCorrector
  extend ::RuboCop::Cop::TargetRubyVersion

  def map_compact(param0 = T.unsafe(nil)); end
  def on_send(node); end

  private

  def compact_method_with_final_newline_range(compact_method_range); end
  def invoke_method_after_map_compact_on_same_line?(compact_node, chained_method); end
  def map_method_and_compact_method_on_same_line?(map_node, compact_node); end
  def remove_compact_method(corrector, map_node, compact_node, chained_method); end
  def use_dot?(node); end
end

RuboCop::Cop::Performance::MapCompact::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Performance::MapCompact::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Performance::MethodObjectAsBlock < ::RuboCop::Cop::Base
  def method_object_as_argument?(param0 = T.unsafe(nil)); end
  def on_block_pass(node); end
end

RuboCop::Cop::Performance::MethodObjectAsBlock::MSG = T.let(T.unsafe(nil), String)

class RuboCop::Cop::Performance::OpenStruct < ::RuboCop::Cop::Base
  def on_send(node); end
  def open_struct(param0 = T.unsafe(nil)); end
end

RuboCop::Cop::Performance::OpenStruct::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Performance::OpenStruct::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Performance::RangeInclude < ::RuboCop::Cop::Base
  extend ::RuboCop::Cop::AutoCorrector

  def on_send(node); end
  def range_include(param0 = T.unsafe(nil)); end
end

RuboCop::Cop::Performance::RangeInclude::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Performance::RangeInclude::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Performance::RedundantBlockCall < ::RuboCop::Cop::Base
  extend ::RuboCop::Cop::AutoCorrector

  def blockarg_assigned?(param0, param1); end
  def blockarg_calls(param0, param1); end
  def blockarg_def(param0 = T.unsafe(nil)); end
  def on_def(node); end
  def on_defs(node); end

  private

  def args_include_block_pass?(blockcall); end
  def autocorrect(corrector, node); end
  def calls_to_report(argname, body); end
  def shadowed_block_argument?(body, block_argument_of_method_signature); end
end

RuboCop::Cop::Performance::RedundantBlockCall::CLOSE_PAREN = T.let(T.unsafe(nil), String)
RuboCop::Cop::Performance::RedundantBlockCall::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Performance::RedundantBlockCall::OPEN_PAREN = T.let(T.unsafe(nil), String)
RuboCop::Cop::Performance::RedundantBlockCall::SPACE = T.let(T.unsafe(nil), String)
RuboCop::Cop::Performance::RedundantBlockCall::YIELD = T.let(T.unsafe(nil), String)

class RuboCop::Cop::Performance::RedundantEqualityComparisonBlock < ::RuboCop::Cop::Base
  extend ::RuboCop::Cop::AutoCorrector
  extend ::RuboCop::Cop::TargetRubyVersion

  def on_block(node); end

  private

  def new_argument(block_argument, block_body); end
  def offense_range(node); end
  def one_block_argument?(block_arguments); end
  def same_block_argument_and_is_a_argument?(block_body, block_argument); end
  def use_block_argument_in_method_argument_of_operand?(block_argument, operand); end
  def use_equality_comparison_block?(block_body); end
end

RuboCop::Cop::Performance::RedundantEqualityComparisonBlock::COMPARISON_METHODS = T.let(T.unsafe(nil), Array)
RuboCop::Cop::Performance::RedundantEqualityComparisonBlock::IS_A_METHODS = T.let(T.unsafe(nil), Array)
RuboCop::Cop::Performance::RedundantEqualityComparisonBlock::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Performance::RedundantEqualityComparisonBlock::TARGET_METHODS = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Performance::RedundantMatch < ::RuboCop::Cop::Base
  extend ::RuboCop::Cop::AutoCorrector

  def match_call?(param0 = T.unsafe(nil)); end
  def on_send(node); end
  def only_truthiness_matters?(param0 = T.unsafe(nil)); end

  private

  def autocorrect(corrector, node); end
  def autocorrectable?(node); end
end

RuboCop::Cop::Performance::RedundantMatch::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Performance::RedundantMatch::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Performance::RedundantMerge < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::Alignment
  extend ::RuboCop::Cop::AutoCorrector

  def modifier_flow_control?(param0 = T.unsafe(nil)); end
  def on_send(node); end
  def redundant_merge_candidate(param0 = T.unsafe(nil)); end

  private

  def correct_multiple_elements(corrector, node, parent, new_source); end
  def correct_single_element(corrector, node, new_source); end
  def each_redundant_merge(node); end
  def kwsplat_used?(pairs); end
  def leading_spaces(node); end
  def max_key_value_pairs; end
  def message(node); end
  def non_redundant_merge?(node, receiver, pairs); end
  def non_redundant_pairs?(receiver, pairs); end
  def non_redundant_value_used?(receiver, node); end
  def rewrite_with_modifier(node, parent, new_source); end
  def to_assignments(receiver, pairs); end
end

RuboCop::Cop::Performance::RedundantMerge::AREF_ASGN = T.let(T.unsafe(nil), String)

class RuboCop::Cop::Performance::RedundantMerge::EachWithObjectInspector
  extend ::RuboCop::AST::NodePattern::Macros

  def initialize(node, receiver); end

  def each_with_object_node(param0 = T.unsafe(nil)); end
  def value_used?; end

  private

  def eligible_receiver?; end
  def node; end
  def receiver; end
  def second_argument; end
  def unwind(receiver); end
end

RuboCop::Cop::Performance::RedundantMerge::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Performance::RedundantMerge::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)
RuboCop::Cop::Performance::RedundantMerge::WITH_MODIFIER_CORRECTION = T.let(T.unsafe(nil), String)

class RuboCop::Cop::Performance::RedundantSortBlock < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::RangeHelp
  include ::RuboCop::Cop::SortBlock
  extend ::RuboCop::Cop::AutoCorrector

  def on_block(node); end
  def on_numblock(node); end

  private

  def register_offense(send, node); end
end

RuboCop::Cop::Performance::RedundantSortBlock::MSG = T.let(T.unsafe(nil), String)

class RuboCop::Cop::Performance::RedundantSplitRegexpArgument < ::RuboCop::Cop::Base
  extend ::RuboCop::Cop::AutoCorrector

  def on_send(node); end
  def split_call_with_regexp?(param0 = T.unsafe(nil)); end

  private

  def determinist_regexp?(regexp_node); end
  def replacement(regexp_node); end
end

RuboCop::Cop::Performance::RedundantSplitRegexpArgument::DETERMINISTIC_REGEX = T.let(T.unsafe(nil), Regexp)
RuboCop::Cop::Performance::RedundantSplitRegexpArgument::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Performance::RedundantSplitRegexpArgument::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)
RuboCop::Cop::Performance::RedundantSplitRegexpArgument::STR_SPECIAL_CHARS = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Performance::RedundantStringChars < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::RangeHelp
  extend ::RuboCop::Cop::AutoCorrector

  def on_send(node); end
  def redundant_chars_call?(param0 = T.unsafe(nil)); end

  private

  def build_bad_method(method, args); end
  def build_call_args(call_args_node); end
  def build_good_method(method, args); end
  def build_good_method_for_brackets_or_first_method(method, args); end
  def build_message(method, args); end
  def correction_range(receiver, node); end
  def offense_range(receiver, node); end
end

RuboCop::Cop::Performance::RedundantStringChars::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Performance::RedundantStringChars::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Performance::RegexpMatch < ::RuboCop::Cop::Base
  extend ::RuboCop::Cop::AutoCorrector
  extend ::RuboCop::Cop::TargetRubyVersion

  def last_matches(param0); end
  def match_method?(param0 = T.unsafe(nil)); end
  def match_node?(param0 = T.unsafe(nil)); end
  def match_operator?(param0 = T.unsafe(nil)); end
  def match_threequals?(param0 = T.unsafe(nil)); end
  def match_with_int_arg_method?(param0 = T.unsafe(nil)); end
  def match_with_lvasgn?(node); end
  def on_case(node); end
  def on_if(node); end
  def search_match_nodes(param0); end

  private

  def autocorrect(corrector, node); end
  def check_condition(cond); end
  def correct_operator(corrector, recv, arg, oper = T.unsafe(nil)); end
  def correction_range(recv, arg); end
  def find_last_match(body, range, scope_root); end
  def last_match_used?(match_node); end
  def match_gvar?(sym); end
  def message(node); end
  def modifier_form?(match_node); end
  def next_match_pos(body, match_node_pos, scope_root); end
  def range_to_search_for_last_matches(match_node, body, scope_root); end
  def replace_with_match_predicate_method(corrector, recv, arg, op_range); end
  def scope_body(node); end
  def scope_root(node); end
  def swap_receiver_and_arg(corrector, recv, arg); end
end

RuboCop::Cop::Performance::RegexpMatch::MATCH_NODE_PATTERN = T.let(T.unsafe(nil), String)
RuboCop::Cop::Performance::RegexpMatch::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Performance::RegexpMatch::TYPES_IMPLEMENTING_MATCH = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Performance::ReverseEach < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::RangeHelp
  extend ::RuboCop::Cop::AutoCorrector

  def on_send(node); end
  def reverse_each?(param0 = T.unsafe(nil)); end

  private

  def offense_range(node); end
  def use_return_value?(node); end
end

RuboCop::Cop::Performance::ReverseEach::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Performance::ReverseEach::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Performance::ReverseFirst < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::RangeHelp
  extend ::RuboCop::Cop::AutoCorrector

  def on_send(node); end
  def reverse_first_candidate?(param0 = T.unsafe(nil)); end

  private

  def build_bad_method(node); end
  def build_good_method(node); end
  def build_message(node); end
  def correction_range(receiver, node); end
end

RuboCop::Cop::Performance::ReverseFirst::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Performance::ReverseFirst::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Performance::SelectMap < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::RangeHelp
  extend ::RuboCop::Cop::TargetRubyVersion

  def bad_method?(param0 = T.unsafe(nil)); end
  def on_send(node); end

  private

  def map_method_candidate(node); end
  def offense_range(node, map_method); end
end

RuboCop::Cop::Performance::SelectMap::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Performance::SelectMap::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Performance::Size < ::RuboCop::Cop::Base
  extend ::RuboCop::Cop::AutoCorrector

  def array?(param0 = T.unsafe(nil)); end
  def count?(param0 = T.unsafe(nil)); end
  def hash?(param0 = T.unsafe(nil)); end
  def on_send(node); end
end

RuboCop::Cop::Performance::Size::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Performance::Size::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Performance::SortReverse < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::RangeHelp
  include ::RuboCop::Cop::SortBlock
  extend ::RuboCop::Cop::AutoCorrector

  def on_block(node); end
  def on_numblock(node); end

  private

  def register_offense(send, node); end
end

RuboCop::Cop::Performance::SortReverse::MSG = T.let(T.unsafe(nil), String)

class RuboCop::Cop::Performance::Squeeze < ::RuboCop::Cop::Base
  extend ::RuboCop::Cop::AutoCorrector

  def on_send(node); end
  def squeeze_candidate?(param0 = T.unsafe(nil)); end

  private

  def repeating_literal?(regex_str); end
end

RuboCop::Cop::Performance::Squeeze::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Performance::Squeeze::PREFERRED_METHODS = T.let(T.unsafe(nil), Hash)
RuboCop::Cop::Performance::Squeeze::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Performance::StartWith < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::RegexpMetacharacter
  extend ::RuboCop::Cop::AutoCorrector

  def on_match_with_lvasgn(node); end
  def on_send(node); end
  def redundant_regex?(param0 = T.unsafe(nil)); end
end

RuboCop::Cop::Performance::StartWith::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Performance::StartWith::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Performance::StringIdentifierArgument < ::RuboCop::Cop::Base
  extend ::RuboCop::Cop::AutoCorrector

  def on_send(node); end
end

RuboCop::Cop::Performance::StringIdentifierArgument::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Performance::StringIdentifierArgument::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Performance::StringInclude < ::RuboCop::Cop::Base
  extend ::RuboCop::Cop::AutoCorrector

  def on_match_with_lvasgn(node); end
  def on_send(node); end
  def redundant_regex?(param0 = T.unsafe(nil)); end

  private

  def literal?(regex_str); end
end

RuboCop::Cop::Performance::StringInclude::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Performance::StringInclude::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Performance::StringReplacement < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::RangeHelp
  extend ::RuboCop::Cop::AutoCorrector

  def on_send(node); end
  def string_replacement?(param0 = T.unsafe(nil)); end

  private

  def accept_first_param?(first_param); end
  def accept_second_param?(second_param); end
  def autocorrect(corrector, node); end
  def first_source(first_param); end
  def message(node, first_source, second_source); end
  def method_suffix(node); end
  def offense(node, first_param, second_param); end
  def range(node); end
  def remove_second_param(corrector, node, first_param); end
  def replace_method(corrector, node, first_source, second_source, first_param); end
  def replacement_method(node, first_source, second_source); end
  def source_from_regex_constructor(node); end
  def source_from_regex_literal(node); end
end

RuboCop::Cop::Performance::StringReplacement::BANG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Performance::StringReplacement::DELETE = T.let(T.unsafe(nil), String)
RuboCop::Cop::Performance::StringReplacement::DETERMINISTIC_REGEX = T.let(T.unsafe(nil), Regexp)
RuboCop::Cop::Performance::StringReplacement::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Performance::StringReplacement::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)
RuboCop::Cop::Performance::StringReplacement::TR = T.let(T.unsafe(nil), String)

class RuboCop::Cop::Performance::Sum < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::RangeHelp
  extend ::RuboCop::Cop::AutoCorrector
  extend ::RuboCop::Cop::TargetRubyVersion

  def acc_plus_elem?(param0 = T.unsafe(nil), param1, param2); end
  def elem_plus_acc?(param0 = T.unsafe(nil), param1, param2); end
  def on_block(node); end
  def on_send(node); end
  def sum_candidate?(param0 = T.unsafe(nil)); end
  def sum_map_candidate?(param0 = T.unsafe(nil)); end
  def sum_with_block_candidate?(param0 = T.unsafe(nil)); end

  private

  def array_literal?(node); end
  def autocorrect(corrector, init, range); end
  def autocorrect_sum_map(corrector, sum, map, init); end
  def build_block_bad_method(method, init, var_acc, var_elem, body); end
  def build_block_message(send, init, var_acc, var_elem, body); end
  def build_good_method(init, block_pass = T.unsafe(nil)); end
  def build_method_bad_method(init, method, operation); end
  def build_method_message(node, method, init, operation); end
  def build_sum_map_message(method, init); end
  def empty_array_literal?(node); end
  def handle_sum_candidate(node); end
  def handle_sum_map_candidate(node); end
  def method_call_with_args_range(node); end
  def sum_block_range(send, node); end
  def sum_map_range(map, sum); end
  def sum_method_range(node); end
end

RuboCop::Cop::Performance::Sum::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Performance::Sum::MSG_IF_NO_INIT_VALUE = T.let(T.unsafe(nil), String)
RuboCop::Cop::Performance::Sum::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Performance::TimesMap < ::RuboCop::Cop::Base
  extend ::RuboCop::Cop::AutoCorrector

  def on_block(node); end
  def on_numblock(node); end
  def on_send(node); end
  def times_map_call(param0 = T.unsafe(nil)); end

  private

  def check(node); end
  def message(map_or_collect, count); end
end

RuboCop::Cop::Performance::TimesMap::MESSAGE = T.let(T.unsafe(nil), String)
RuboCop::Cop::Performance::TimesMap::MESSAGE_ONLY_IF = T.let(T.unsafe(nil), String)
RuboCop::Cop::Performance::TimesMap::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Performance::UnfreezeString < ::RuboCop::Cop::Base
  extend ::RuboCop::Cop::AutoCorrector

  def dup_string?(param0 = T.unsafe(nil)); end
  def on_send(node); end
  def string_new?(param0 = T.unsafe(nil)); end

  private

  def string_value(node); end
end

RuboCop::Cop::Performance::UnfreezeString::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Performance::UnfreezeString::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Performance::UriDefaultParser < ::RuboCop::Cop::Base
  extend ::RuboCop::Cop::AutoCorrector

  def on_send(node); end
  def uri_parser_new?(param0 = T.unsafe(nil)); end
end

RuboCop::Cop::Performance::UriDefaultParser::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Performance::UriDefaultParser::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

module RuboCop::Cop::RegexpMetacharacter
  private

  def drop_end_metacharacter(regexp_string); end
  def drop_start_metacharacter(regexp_string); end
  def literal_at_end?(regexp); end
  def literal_at_end_with_backslash_z?(regex_str); end
  def literal_at_end_with_dollar?(regex_str); end
  def literal_at_start?(regexp); end
  def literal_at_start_with_backslash_a?(regex_str); end
  def literal_at_start_with_caret?(regex_str); end
  def safe_multiline?; end
end

module RuboCop::Cop::SortBlock
  include ::RuboCop::Cop::RangeHelp
  extend ::RuboCop::AST::NodePattern::Macros

  def replaceable_body?(param0 = T.unsafe(nil), param1, param2); end
  def sort_with_block?(param0 = T.unsafe(nil)); end
  def sort_with_numblock?(param0 = T.unsafe(nil)); end

  private

  def sort_range(send, node); end
end

RuboCop::NodePattern = RuboCop::AST::NodePattern
module RuboCop::Performance; end
RuboCop::Performance::CONFIG = T.let(T.unsafe(nil), Hash)
RuboCop::Performance::CONFIG_DEFAULT = T.let(T.unsafe(nil), Pathname)

module RuboCop::Performance::Inject
  class << self
    def defaults!; end
  end
end

RuboCop::Performance::PROJECT_ROOT = T.let(T.unsafe(nil), Pathname)

module RuboCop::Performance::Version
  class << self
    def document_version; end
  end
end

RuboCop::Performance::Version::STRING = T.let(T.unsafe(nil), String)
RuboCop::ProcessedSource = RuboCop::AST::ProcessedSource
RuboCop::Token = RuboCop::AST::Token
