// Skip to content
// Product
// Solutions
// Open Source
// Pricing
// Search
// Sign in
// Sign up
// smartcontractkit
// /
// chainlink
// Public
// Code
// Issues
// 51
// Pull requests
// 58
// Actions
// Wiki
// Security
// Insights
// chainlink/contracts/src/v0.6/interfaces/AggregatorInterface.sol
// @alexroan
// alexroan Using existing directory structure rather than client and core
// Latest commit 08b6fd1 on Jun 10, 2021
//  History
//  1 contributor
//  55 lines (48 sloc)  769 Bytes

// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

interface AggregatorInterface {
  function latestAnswer()
    external
    view
    returns (
      int256
    );
  
  function latestTimestamp()
    external
    view
    returns (
      uint256
    );

    function latestRound() 
    external 
    view
    returns (
        uint80 roundId,
        int256 answer,
        uint256 startedAt,
        uint256 updatedAt,
        uint80 answeredInRound
    );

  function getAnswer(
    uint256 roundId
  )
    external
    view
    returns (
      int256
    );

  function getTimestamp(
    uint256 roundId
  )
    external
    view
    returns (
      uint256
    );

  event AnswerUpdated(
    int256 indexed current,
    uint256 indexed roundId,
    uint256 updatedAt
  );

  event NewRound(
    uint256 indexed roundId,
    address indexed startedBy,
    uint256 startedAt
  );
}
// Footer
// © 2023 GitHub, Inc.
// Footer navigation
// Terms
// Privacy
// Security
// Status
// Docs
// Contact GitHub
// Pricing
// API
// Training
// Blog
// About
